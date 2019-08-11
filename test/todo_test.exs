defmodule TodoListTest do
  use ExUnit.Case
  doctest TodoList

  test "creates new todo list" do
    assert TodoList.new() == %{}
  end

  test "adds and get a entry to list" do

    assert (TodoList.new() |> TodoList.add_entry(~D(2019-07-05), "Get married") |> TodoList.entries(~D(2019-07-05))) == ["Get married"]

  end
end
