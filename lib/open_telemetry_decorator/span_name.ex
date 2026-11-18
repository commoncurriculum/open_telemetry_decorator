defmodule OpenTelemetryDecorator.SpanName do
  @moduledoc false

  def from_context(%{module: m, name: f}), do: "#{trim(m)}.#{f}"

  # "Elixir module names are just atoms prefixed with 'Elixir.'"
  defp trim(m), do: m |> Atom.to_string() |> String.trim_leading("Elixir.")
end
