module Components.Footer exposing (view)

import Html exposing (Html, a, div, li, node, span, text, ul)
import Html.Attributes exposing (attribute, class, href)


view : Html msg
view =
    div [ class "footer" ]
        [ div [ class "footer__left" ]
            [ span [] [ text "CONTACTS" ] ]
        , div [ class "footer__center" ]
            [ ul []
                [ li []
                    [ a [ href "https://keybase.io/clarela6" ] [ text "Keybase" ] ]
                , li []
                    [ a [ href "mailto:yaho@clarelab.moe" ] [ text "yaho@clarelab.moe" ] ]
                ]
            ]
        , div [ class "footer__right" ]
            [ node "iframe"
                [ attribute "src" "https://counter.clarelab.moe/@www?name=www&theme=rule34&padding=8&offset=0&align=center&scale=2&pixelated=1&darkmode=0"
                , attribute "class" "counter counter--s2"
                , attribute "width" "720"
                , attribute "height" "200"
                ]
                []
            , node "iframe"
                [ attribute "src" "https://counter.clarelab.moe/@www?name=www&theme=rule34&padding=8&offset=0&align=center&scale=1.5&pixelated=1&darkmode=0"
                , attribute "class" "counter counter--s1_5"
                , attribute "width" "540"
                , attribute "height" "150"
                ]
                []
            , node "iframe"
                [ attribute "src" "https://counter.clarelab.moe/@www?name=www&theme=rule34&padding=8&offset=0&align=center&scale=1&pixelated=1&darkmode=0"
                , attribute "class" "counter counter--s1"
                , attribute "width" "360"
                , attribute "height" "100"
                ]
                []
            ]
        ]
