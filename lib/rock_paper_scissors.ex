defmodule Games.RockPaperScissors do
  #set a target
  # @spec start(list() | nil) :: String.t()
  # def start(ai_choice \\ nil) do
  #   ai_choice = ai_choice || Enum.random(["Rock", "Paper", "Scissors"])
  #   IO.puts(ai_choice)
  #   guess = IO.gets("(Rock / Paper /Scissors): ") |> String.trim

  #   cond do
  #     ai_choice == guess -> "It's a tie!"
  #     true -> IO.puts("Guess again!"); start(ai_choice)

  #   end
  # end

  @moduledoc """
  Documentation for `Games`.
  """

  @spec beats?(String.t(), String.t()) :: boolean()
  def beats?(player1, player2),
    do:
      {player1, player2} in [
        {"rock", "scissors"},
        {"paper", "rock"},
        {"scissors", "paper"}
      ]

  @spec start :: String.t()
  def start do
    player_choice = IO.gets("rock/paper/scissors: ") |> String.trim()
    ai_choice = Enum.random(["rock", "paper", "scissors"])

    cond do
      beats?(player_choice, ai_choice) -> "You win! #{player_choice} beats #{ai_choice}"
      beats?(ai_choice, player_choice) -> "You lose! #{ai_choice} beats #{player_choice}"
      true -> "It's a tie!"
    end
  end
end
