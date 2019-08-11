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

  """

  def new do
    %{}
  end
  
  def add_entry(todo_list, date, title) do
    Map.update(todo_list, date, [title], fn titles -> [title | titles] end)
  end
end
