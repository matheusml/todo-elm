import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (..)
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