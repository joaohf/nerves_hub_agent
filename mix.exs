defmodule NervesHubAgent.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "Selfcontent agent for connecting it to NervesHub"
  @source_url "https://github.com/nerves-hub/nerves_hub_agent"

  def project do
    [
      app: :nerves_hub_agent,
      description: @description,
      version: @version,
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [
        nerves_hub_agent: [
          applications: [
            nerves_hub_agent: :permanent
          ],
          steps: [
            :assemble,
            :tar
          ],
          # When cross-compile, include the correct ERTS path
          include_erts: System.get_env("MIX_TARGET_INCLUDE_ERTS") || true
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {NervesHubAgent.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nerves_runtime, "~> 0.13"},
      {:nerves_hub_link, "~> 2.7"}
    ]
  end
end
