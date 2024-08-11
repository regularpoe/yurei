defmodule Yurei.Application do
  use Application

  def start(_type, _args) do

    port = String.to_integer(System.get_env("PORT") || "9078")

    children = [
      {Task, fn -> Yurei.accept(port) end}
    ]

    opts = [strategy: :one_for_one, name: Yurei.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
