module Main exposing (main)

import Browser
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Components.Footer as Footer
import Pages.Home as Home

main : Program () () msg
main =
    Browser.sandbox { init = (), update = \_ m -> m, view = view }

view : () -> Html msg
view _ =
    div []
        [ div [ class "min-h-screen p-6 space-y-6" ] [ Home.view ]
        , Footer.view
        ]