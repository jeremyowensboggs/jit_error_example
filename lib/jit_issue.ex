defmodule JitIssue do
  require EEx


  @forecast_path ["templates", "forecast.csv.eex"]
                 |> Path.join()
                 |> Path.absname()



  EEx.function_from_file(:defp, :forecast, @forecast_path, [:start_date])

  def get_file() do
    forecast(Date.utc_today())
  end
end
