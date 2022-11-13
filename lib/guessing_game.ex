# defmodule Games.GuessingGame do
#   def start(target \\ nil) do
#     target = target || Enum.random(1..10)

#     user_guess = fn ->
#       IO.gets("Enter your guess: ")
#       |> String.trim()
#       |> String.to_integer()
#     end

#     guess = user_guess.()

#     cond do
#       target == guess ->
#         "Correct!"

#       guess > target ->
#         IO.puts("Incorrect! Too high")
#         start(target, false)

#       guess < target ->
#         IO.puts("Incorrect! Too low")
#         start(target, false)
#     end
#   end
# end

# defmodule Games.GuessingGame do
#   def start(target \ nil) do
#     target = target || Enum.random(1..10)

#     user_guess = fn ->
#       IO.gets("Enter your guess: ")
#       |> String.trim()
#       |> String.to_integer()
#     end

#     guess = user_guess.()

#     cond do
#       target == guess ->
#         "Correct!"

#       guess > target ->
#         IO.puts("Incorrect! Too high")
#         start(target)

#       guess < target ->
#         IO.puts("Incorrect! Too low")
#         start(target)
#     end
#   end
# end
