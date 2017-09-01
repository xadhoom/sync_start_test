defmodule Primary.Mixfile do
  use Mix.Project

  def project do
    [
      app: :primary,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {:application_starter, [Primary.Application, []]},
      start_phases: [init: [], go: []],
      included_applications: [:secondary]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:secondary, path: "../../included_apps/secondary"}
    ]
  end
end
