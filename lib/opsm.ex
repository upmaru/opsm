defmodule Opsm do
  @moduledoc """
  OSPM CLI tool for managing operations
  """

  @doc """
  Hello world.

  ## Examples

      iex> Opsm.hello()
      :world

  """
  def hello do
    :world
  end

  def main(args) do
    args
    |> parse_args()
    |> process_command()
  end

  defp parse_args(args) do
    {_, command, _} = OptionParser.parse(args, switches: [])
    command
  end

  defp process_command(["init"]) do
    IO.puts("Initializing OSPM...")
  end

  defp process_command(["list"]) do
    IO.puts("Listing all items...")
  end

  defp process_command(["llm", "init"]) do
    IO.puts("Initializing LLM configuration...")
  end

  defp process_command(["llm", "list"]) do
    IO.puts("Listing all LLMs...")
  end

  defp process_command(_) do
    IO.puts("""
    Unknown command. Available commands:
      ospm init         - Initialize OSPM
      ospm list         - List all items
      ospm llm init     - Initialize LLM configuration
      ospm llm list     - List all LLMs
    """)
  end
end
