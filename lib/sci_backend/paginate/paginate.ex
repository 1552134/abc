defmodule SciBackend.Paginate do
  @moduledoc """
  How to use this module?
  BY DEFAULT: page_size=10, page=1 AND MAX PAGE SIZE WAS SET TO 300 records

  Every Pagination will follow the flow below:
    validation -->  paginate --> cleanup -->format(optional)

    _ validation: validate params before paginating
    _ paginate: paginate data
    _ cleanup : handle specific case which page params > total_page => return empty entries
    _ format (optional): format result for easy-to-read or accessing.

  Example:
   def all(params) do
    with {:ok, args} <- Paginate.validation(params),
         paginated_list <- Paginate.paginate(Event, args),
         raw_result <- Paginate.cleanup(paginated_list, args),
         result <- Paginate.format(raw_result) do
      {:ok, result}
    else
      {:error, :bad_request, msg} -> {:error, :bad_request, msg}
    end
  end

   * Use with statement instead of pipeline to handle errors easier

  """

  defmodule Meta do
    @type t :: %Meta{}
    @enforce_keys [:current_page, :total_pages, :total_entries, :page_size]
    defstruct current_page: 0, total_entries: 0, total_pages: 0, page_size: 30
  end

  # Validate query params before do paginating:
  # validate: not integer, empty input, page smaller than 0, page_size smaller than 1
  def validation(args) do
    page = check_page(args["page"])
    page_size = check_page_size(args["page_size"])

    cond do
      elem(page, 0) == :error ->
        page

      elem(page_size, 0) == :error ->
        page_size

      true ->
        params = %{page: elem(page, 1), page_size: elem(page_size, 1)}
        {:ok, params}
    end
  end

  # paginate function will execute `query` and apply pagination if page or page_size attrs exists in `args`
  # Default values: page_size=10, page=1
  def paginate(query, args) do
    SciBackend.Repo.paginate(query, page: args.page, page_size: args.page_size)
  end

  # In case requested page is greater than total page
  # Need to remove entries from query result
  def cleanup(paginated_list, args) do
    if args.page > paginated_list.total_pages do
      paginated_list
      |> Map.from_struct()
      |> Map.update!(:entries, fn _ -> [] end)
    else
      paginated_list
    end
  end

  # Format the structure of paginate function above into %{entries: entries, meta: meta}
  def format(paginated_list) do
    %{entries: paginated_list.entries, meta: meta(paginated_list)}
  end

  # Build meta struct
  def meta(%{
        page_size: page_size,
        total_entries: total_entries,
        total_pages: total_pages,
        page_number: page_number
      }) do
    %Meta{
      current_page: page_number,
      total_entries: total_entries,
      total_pages: total_pages,
      page_size: page_size
    }
  end

  # page param validation
  defp check_page(page) do
    Integer.parse(page)

    case Integer.parse(page) do
      :error ->
        {:error, :bad_request, "page param is invalid"}

      {page, ""} when page < 0 ->
        {:error, :bad_request, "page params must be equal or greater than 0"}

      {page, ""} when page >= 0 ->
        {:ok, page}
    end
  end

  # page_size param validation
  defp check_page_size(page_size) do
    case Integer.parse(page_size) do
      :error ->
        {:error, :bad_request, "page_size param is invalid"}

      {page_size, ""} when page_size <= 0 ->
        {:error, :bad_request, "page_size params must be greater than 0"}

      {page_size, ""} when page_size > 0 ->
        {:ok, page_size}
    end
  end
end
