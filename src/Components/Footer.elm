module Components.Footer exposing (view)

import Html exposing (Html, a, div, li, node, span, text, ul)
import Html.Attributes exposing (attribute, class, href)


view : Html msg
view =
    div [ class "" ]
        [ div [ class "grow-0" ]
            [ span [ class "" ]
                [ text "Contacts" ]
            ]
        , div [ class "" ]
            [ ul [ class "" ]
                [ li [ class "" ]
                    [ a
                        [ href "https://keybase.io/clarela6"
                        , class ""
                        ]
                        [ text "Keybase" ]
                    ]
                , li [ class "" ]
                    [ a
                        [ href "mailto:yaho@clarelab.moe"
                        , class ""
                        ]
                        [ text "yaho@clarelab.moe" ]
                    ]
                ]
            ]
        , div [ class "" ]
            [ node "object"
                [ attribute "data"
                    "https://counter.clarelab.moe/@www?name=www&theme=rule34&padding=8&offset=0&align=center&scale=2&pixelated=1&darkmode=0"
                , attribute "type"
                    "image/svg+xml"
                , class ""
                ]
                []
            ]
        ]
