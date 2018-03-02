defmodule PhpCodeGeneratorTest do
  use ExUnit.Case
  doctest PhpCodeGenerator

  test "greets the world" do
    assert PhpCodeGenerator.hello() == :world
  end
end
