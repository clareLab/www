module Components.Footer exposing (view)

import Html exposing (Html, a, div, li, span, text, ul, node)
import Html.Attributes exposing (alt, class, href, src, attribute)

view : Html msg
view =
    div [ class "border-t grid grid-cols-[auto,1fr,auto] items-stretch" ]
        [ div [ class "flex flex-col justify-between items-center select-none uppercase leading-none" ]
            [ span [] [ text "C" ]
            , span [] [ text "O" ]
            , span [] [ text "N" ]
            , span [] [ text "T" ]
            , span [] [ text "A" ]
            , span [] [ text "C" ]
            , span [] [ text "T" ]
            , span [] [ text "S" ]
            ]
        , div [ class "self-stretch w-full h-full [container-type:size]" ]
            [ ul [ class "grid grid-rows-[1fr_1fr] h-full w-full" ]
                [ li [ class "flex items-center justify-start" ]
                    [ a [ href "https://keybase.io/clarela6" ]
                        [ span [ class "block leading-none whitespace-nowrap text-[min(calc(100cqh/2*0.85),10.8cqw)]" ] [ text "Keybase" ] ]
                    ]
                , li [ class "flex items-center justify-start" ]
                    [ a [ href "mailto:yaho@clarelab.moe" ]
                        [ span [ class "block leading-none whitespace-nowrap text-[min(calc(100cqh/2*0.85),10.8cqw)]" ] [ text "yaho@clarelab.moe" ] ]
                    ]
                ]
            ]
        , div [ class "flex items-center justify-end" ]
            [ node "object"
                [ attribute "data" "https://counter.clarelab.moe/@www?name=www&theme=rule34&padding=8&offset=0&align=center&scale=2&pixelated=1&darkmode=0"
                , attribute "type" "image/svg+xml"
                , class "block"
                ]
                []
            ]
        ]
