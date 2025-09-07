module Components.Footer exposing (view)

import Html exposing (Html, a, div, li, node, span, text, ul)
import Html.Attributes exposing (attribute, class, href)
import String exposing (fromFloat, fromInt, replace)


maxScale : Float
maxScale =
    2


steps : Int
steps =
    4


scales : List Float
scales =
    List.map (\k -> toFloat k * (maxScale / toFloat steps))
        (List.reverse (List.range 1 steps))


suffix : Float -> String
suffix s =
    "s" ++ replace "." "_" (fromFloat s)


wOf : Float -> Int
wOf s =
    round (360 * s)


hOf : Float -> Int
hOf s =
    round (100 * s)


urlOf : Float -> String
urlOf s =
    "https://counter.clarelab.moe/@www?name=www&theme=rule34&padding=8&offset=0&align=center&scale="
        ++ fromFloat s
        ++ "&pixelated=1&darkmode=0"


iframeOf : Float -> Html msg
iframeOf s =
    node "iframe"
        [ attribute "src" (urlOf s)
        , attribute "class" ("counter counter--" ++ suffix s)
        , attribute "width" (fromInt (wOf s))
        , attribute "height" (fromInt (hOf s))
        ]
        []


view : Html msg
view =
    div [ class "footer" ]
        [ div [ class "footer__left" ] [ span [] [ text "CONTACTS" ] ]
        , div [ class "footer__center" ]
            [ ul []
                [ li [] [ a [ href "https://keybase.io/clarela6" ] [ text "Keybase" ] ]
                , li [] [ a [ href "mailto:yaho@clarelab.moe" ] [ text "yaho@clarelab.moe" ] ]
                ]
            ]
        , div [ class "footer__right" ] (List.map iframeOf scales)
        ]
