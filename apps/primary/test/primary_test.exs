defmodule PrimaryTest do
  use ExUnit.Case
  doctest Primary

  test "greets the world" do
    assert Primary.hello() == :world
  end
end
