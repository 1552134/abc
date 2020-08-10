defmodule SciBackendWeb.MetaView do
  use SciBackendWeb, :view

  @moduledoc """
  Conveniences for render metadata.
  For example: Fetching a list of events will have metadata with contains current_page, page_size, ...
  """

  @doc """
  Rendering meta field.
  """

  def render("meta.json", %{meta: meta}) do
    %{
      current_page: meta.current_page,
      total_entries: meta.total_entries,
      total_pages: meta.total_pages,
      page_size: meta.page_size
    }
  end
end
