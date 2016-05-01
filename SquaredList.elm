import Html exposing (text)

main =
  text (view [1, 2, 3, 4])

view list =
  toString (squaredList list)

squaredList list =
  List.map square list

square =
  \x -> x * 2
