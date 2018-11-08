defmodule Imagestat do
  @moduledoc """
  Documentation for Imagestat.
  """

  @doc """
  The principal function of the program
  which takes the `filename` as params and return the colors stats.

  ## Examples

      iex> Imagestat.main("something.png")
  """
  def main(filename) do
    filename
    |> open_file
  end

  def open_file(filename) do
    img =
      filename
      |> File.read!()
  end
end
