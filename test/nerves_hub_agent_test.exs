defmodule NervesHubAgentTest do
  use ExUnit.Case
  doctest NervesHubAgent

  test "greets the world" do
    assert NervesHubAgent.hello() == :world
  end
end
