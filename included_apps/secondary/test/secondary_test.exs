defmodule SecondaryTest do
  use ExUnit.Case
  doctest Secondary

  test "greets the world" do
    assert Secondary.hello() == :world
  end
end
