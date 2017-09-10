use Mix.Config

config :sample, ecto_repos: [Sample.Repo]

import_config "#{Mix.env}.exs"
