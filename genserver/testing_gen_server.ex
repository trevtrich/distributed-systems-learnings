defmodule TestingGenServer do
  @moduledoc false

  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end

  def init(list) do
    {:ok, list}
  end

#  def handle_call(_msg, _from, state) do
#    {:reply, :ok, state}
#  end
#
#  def handle_cast(_msg, state) do
#    {:noreply, state}
#  end
end