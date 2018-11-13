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
    |> image_infos
  end

  def image_infos(filename) do
    {_, infos_fast} = filename |> Fastimage.info()
    %{size: size} = filename |> File.stat!()
    Map.put_new(infos_fast, :size_in_bit, size)
  end
end
