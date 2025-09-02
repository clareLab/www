module Components.Footer exposing (view)

import Html exposing (Html, a, div, h2, iframe, li, text, ul)
import Html.Attributes exposing (class, href)

view : Html msg
view =
    div [ class "fixed bottom-0 left-0 right-0 bg-white border-t flex justify-between items-center text-xs" ]
        [ div []
            [ h2 [ class "font-medium" ] [ text "Contacts" ]
            , ul []
                [ li [] [ a [ href "https://keybase.io/clarela6" ] [ text "Keybase" ] ]
                , li [] [ a [ href "mailto:yaho@clarelab.moe" ] [ text "yaho@clarelab.moe" ] ]
                ]
            ]
        , div [ class "flex items-center" ]
            [ iframe
                [ Html.Attributes.src "https://counter.clarelab.moe/@www?name=www&theme=rule34&padding=8&offset=0&align=center&scale=2&pixelated=1&darkmode=0"
                , class "border-0"
                ]
                []
            ]
        ]