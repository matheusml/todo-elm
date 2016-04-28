import Html exposing (Html, div, input, button)
import Html.Attributes exposing (..)

main : Html
main =
  view
  
view : Html
view = 
  div []
    [ input 
        [ placeholder "new todo"
        , value ""
        ]
        []    
    ]
    