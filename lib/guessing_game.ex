defmodule Games.GuessingGame do
  def start(target \\ 100, first_run \\ true) do
    target = if first_run == true, do: Enum.random(1..10), else: target

    user_guess = fn ->
      IO.gets("Enter your guess: ")
      |> String.trim()
      |> String.to_integer()
    end

    guess = user_guess.()

    cond do
      target == guess ->
        "Correct!"

      guess > target ->
        IO.puts("Incorrect! Too high")
        start(target, false)

      guess < target ->
        IO.puts("Incorrect! Too low")
        start(target, false)
    end
  end
end
