defmodule Yurei.Command do
  def parse(line) do
    case String.split(line) do
      ["foo"] -> {:ok, {:foo}}
      ["bar"] -> {:ok, {:bar}}
      _ -> {:error, :unknown_command}
    end
  end

  def run(command)

  def run({:foo}) do
    {:ok, "FOO called\r\n"}
  end

  def run({:bar}) do
    {:ok, "BAR called\r\n"}
  end
end
