module Main exposing (..)
import Html exposing (text)

arg : number
arg = 3

main : Html.Html msg
main =
  result (factorial arg |> String.fromInt) |> text

result : String -> String
result fact =
  String.fromInt(arg) ++ "!=" ++ fact

factorial : Int -> Int
factorial n = 
  if n < 1 then 
    1
  else 
    n * factorial(n-1)