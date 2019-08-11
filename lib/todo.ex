defmodule TodoList do
  @moduledoc """
  Documentation for TodoList.
  """

  @doc """
  Abstraction of todolist datatype

  ## Examples

      iex> TodoList.new()
      %{}
      iex> TodoList.new() |> TodoList.add_entry(~D(2019-07-05), "Get married")
      %{~D(2019-07-05) => ["Get married"]}
      iex> TodoList.new() |> TodoList.add_entry(~D(2019-07-05), "Get married") |> TodoList.entries(~D(2019-07-05))
      ["Get married"]

  """

  @spec new() :: map
  def new do
    MultiDict.new()
  end

  @spec add_entry(map, any, any) :: map
  def add_entry(todo_list, date, title) do
    MultiDict.add(todo_list, date, title)
  end

  @spec entries(map, any) :: any
  def entries(todo_list, date) do
    MultiDict.get(todo_list, date)
  end
end

defmodule MultiDict do
  @spec new() :: map
  def new do
    %{}
  end

  @spec add(map, any, any) :: map
  def add(todo_list, date, title) do
    Map.update(todo_list, date, [title],  &[title | &1])
  end

  @spec get(map, any) :: any
  def get(todo_list, date) do
    Map.get(todo_list, date, [])
  end

end
