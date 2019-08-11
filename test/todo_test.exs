defmodule TodoListTest do
  use ExUnit.Case
  doctest TodoList

  test "creates new todo list" do
    assert TodoList.new() == %{}
  end
end
