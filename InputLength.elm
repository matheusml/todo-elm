import Html exposing (..)
import Html.Events exposing (..)
import Signal exposing (..)
import String
import StartApp.Simple as StartApp

main =
  StartApp.start { model = "", view = view, update = update }

view address model =
  div []
    [ input [ on "input" targetValue (Signal.message address)] []
    , div []
      [ text (toString (String.length model))
      ]
    ]

update newStr oldStr =
  newStr
