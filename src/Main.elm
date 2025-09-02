module Main exposing (main)

import Browser
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Components.Footer
import Pages.Home

main : Program () () msg
main =
    Browser.sandbox { init = (), update = \_ m -> m, view = view }

view : () -> Html msg
view _ =
    div [ class "p-6 space-y-6 pb-24" ]
        [ Pages.Home.view
        , Components.Footer.view
        ]