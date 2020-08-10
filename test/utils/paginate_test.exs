defmodule PaginateTest do
  use ExUnit.Case, async: true
  alias SciBackend.{Event, Paginate}
  doctest SciBackend.Paginate

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(SciBackend.Repo)
  end

  # pre: database have 13 events
  # input:
  #   @page = 2
  #   @page_size = 2
  # output:
  #   @page_number = 2
  #   @page_size = 2
  test "Correct page_size and page_number" do
    args = %{
      page: 2,
      page_size: 2
    }

    paginated =
      Event
      |> Paginate.paginate(args)

    assert paginated.page_size === 2
    assert paginated.page_number === 2
  end

  # pre: database have 13 events
  # input:
  #   @page = 20
  #   @page_size = 20
  # output:
  #   @entries = []
  #   @page_number = 20
  test "Remove entries when input was out range: greater than total page" do
    args = %{
      page: 20,
      page_size: 20
    }

    paginated =
      Event
      |> Paginate.paginate(args)
      |> Paginate.cleanup(args)
      |> Paginate.format()

    assert paginated.meta.page_size === 20
    assert paginated.entries == []
  end

  # pre: database have 13 events
  # input:
  #   @page = -1
  # output:
  #   {:error, :bad_request, "page params must be equal or greater than 0"}
  test "Return error when page is out of range, smaller than 0" do
    args = %{"page" => "-1", "page_size" => "40"}

    paginated = Paginate.validation(args)
    assert paginated === {:error, :bad_request, "page params must be equal or greater than 0"}
  end

  # pre: database have 13 events
  # input:
  #   @page_size = 0
  # output:
  #   {:error, :bad_request, "page_size params must be greater than 0"}
  test "Return error when page_size is out of range, smaller than 1" do
    args = %{"page" => "3", "page_size" => "0"}

    paginated = Paginate.validation(args)

    assert paginated === {:error, :bad_request, "page_size params must be greater than 0"}
  end

  # pre: database have 13 events
  # input:
  #   @page = ""
  # output:
  #   {:error, :bad_request, "page param is invalid"}
  test "Return error when page param is empty" do
    args = %{"page" => "", "page_size" => "3"}

    paginated = Paginate.validation(args)

    assert paginated === {:error, :bad_request, "page param is invalid"}
  end

  # pre: database have 13 events
  # input:
  #   @page = "@#A"
  # output:
  #   {:error, :bad_request, "page param is invalid"}
  test "Return error when page param is not integer" do
    args = %{"page" => "@#A", "page_size" => "3"}

    paginated = Paginate.validation(args)

    assert paginated === {:error, :bad_request, "page param is invalid"}
  end

  # pre: database have 13 events
  # input:
  #   @page_size = ""
  # output:
  #   {:error, :bad_request, "page_size param is invalid"}
  test "Return error when page_size param is empty" do
    args = %{"page" => "2", "page_size" => ""}

    paginated = Paginate.validation(args)

    assert paginated === {:error, :bad_request, "page_size param is invalid"}
  end

  # pre: database have 13 events
  # input:
  #   @page_size = "#@A"
  # output:
  #   {:error, :bad_request, "page_size param is invalid"}
  test "Return error when page_size param is not integer" do
    args = %{"page" => "2", "page_size" => "#@A"}

    paginated = Paginate.validation(args)
    assert paginated === {:error, :bad_request, "page_size param is invalid"}
  end
end
