defmodule PhpCodeGenerator.Decorator do
  alias BoilerplateGenerator.Decorator, as: Decorator

  @behaviour Decorator

  @impl(Decorator)
  def transform_input(code_parser_state), do: code_parser_state

  @impl(Decorator)
  def transform_output(contents) do
    contents
    |> String.replace(~r/     \* @return void\n/, "")
    |> String.replace(~r/\:\svoid/, "")
    |> (fn contents -> Regex.replace(~r/(?<=\$)([A-Z][a-z])/, contents, &String.downcase/1) end).()
  end
end
