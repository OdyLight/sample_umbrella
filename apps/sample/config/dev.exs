use Mix.Config

# Configure your database
config :sample, Sample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "sample_dev",
  hostname: "localhost",
  pool_size: 10
