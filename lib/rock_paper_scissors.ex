defmodule Games.RockPaperScissors do
  #set a target
  def start(target \\ nil) do
    target = target || Enum.random(["Rock", "Paper", "Scissors"])
    IO.puts(target)
    guess = IO.gets("(Rock / Paper /Scissors): ") |> String.trim

    cond do
      target == guess -> "It's a tie!"
      true -> IO.puts("Guess again!"); start(target)

    end
  end
end
