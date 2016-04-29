import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)
import StartApp.Simple as StartApp

main =
  StartApp.start { model = 0, view = view, update = update }

view address model =
  div []
    [ button [ onClick address Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick address Increment ] [ text "+" ]
    ]

type Action = Decrement | Increment

update action model =
  case action of
    Decrement ->
      model - 1

    Increment ->
      model + 1