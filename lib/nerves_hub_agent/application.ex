defmodule NervesHubAgent.Application do
  @moduledoc false
  use Application

  @impl Application
  def start(_type, _arg) do
    {:ok, self()}
  end
end
