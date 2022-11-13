defmodule WordleTest do

  use ExUnit.Case

  # test "some string" do
  #   result = Wordle.feedback("hello", "hello")
  #   assert result == [:green, :green, :green, :green, :green]
  # end

  @tag timeout: 120000
  @tag :benchmark
  test "testing 5x inputs to see how performance changes" do
    Benchee.run(%{

      "Reduce Wordle abcde 5 yellow" => fn -> Games.Wordle.feedback("abcde", "bcdea") end,
      "Reduce Wordle with 25 yellow" => fn -> Games.Wordle.feedback("abcdefghijklmnopqrstuvwxy", "bcdefghijklmnopqrstuvwxya") end
    })
  end





end
