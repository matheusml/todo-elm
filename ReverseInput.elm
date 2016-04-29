import Html exposing (Html, div, input, text)
import Html.Attributes exposing (placeholder, value, style)
import Html.Events exposing (on, targetValue)
import Signal exposing (message)
import String
import StartApp.Simple as StartApp

main =
  StartApp.start { model = "", view = view, update = update }

view address model =
  div []
    [ input
        [ placeholder "Reverse the text"
        , value model
        , on "input" targetValue (Signal.message address)
        , styles
        ]
        []
    , div [styles]
        [ text (String.reverse model) ]
    ]

update newStr oldStr =
  newStr

styles =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]