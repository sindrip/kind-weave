defmodule McastSender do
  use GenServer

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    {:ok, socket} = :gen_udp.open(40000)
    Process.send_after(self(), :timer, 1000)
    {:ok, socket}
  end

  def handle_info(:timer, socket) do
    msg = 'Hello'
    IO.puts("Sending multicast: #{msg}")
    :gen_udp.send(socket, {224, 1, 1, 1}, 49999, 'Hello')
    Process.send_after(self(), :timer, 5000)
    {:noreply, socket}
  end
end
