defmodule ShoppingList do
  use GenServer

  # Client
  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end
  def add(pid, item) do
      GenServer.cast(pid, item)
  end
  def remove(pid, item) do
      GenServer.cast(pid, {:remove, item})
  end
  def view(pid) do
      GenServer.call(pid, :view)
  end
  def stop(pid) do
      GenServer.stop(pid, :normal, :infinity)
  end

  # Server
  def handle_cast({:remove, item}, list) do
      updated_list = Enum.filter(list, fn(x) -> x != item end)
      {:noreply, updated_list}
  end
  def handle_cast(item, list) do
      updated_list = [item|list]
      {:noreply, updated_list}
  end
  def handle_call(:view, _from, list) do
      {:reply, list, list}
  end
  def init(list) do
    {:ok, list}
  end
  def terminate(_reason, list) do
      IO.puts("Shuttin her down..")
      IO.inspect(list)
      :ok
  end

#  def handle_call(_msg, _from, state) do
#    {:reply, :ok, state}
#  end
#
#  def handle_cast(_msg, state) do
#    {:noreply, state}
#  end
end