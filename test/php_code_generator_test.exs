defmodule PhpCodeGeneratorTest do
  use ExUnit.Case
  doctest PhpCodeGenerator

  test "php code can be generated" do
    assert (:ok = CodeParserState.Example.generate |> PhpCodeGenerator.generate)
  end
end
