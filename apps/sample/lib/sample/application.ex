defmodule Sample.Application do
  @moduledoc """
  The Sample Application Service.

  The sample system business domain lives in this application.

  Exposes API to clients such as the `SampleWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Sample.Repo, []),
    ], strategy: :one_for_one, name: Sample.Supervisor)
  end
end
