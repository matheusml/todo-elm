import Html exposing (text, div, ul, li)

main =
  view

view =
  div []
    [ text "My simple list:"
    , renderList [ "first item", "second item", "third item" ]
    ]

renderList list =
  ul []
    (List.map (\item -> renderItem item) list)

renderItem item =
  li [] [ text item ]