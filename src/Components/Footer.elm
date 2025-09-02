module Components.Footer exposing (view)

import Html exposing (Html, a, div, li, span, text, ul, node)
import Html.Attributes exposing (alt, class, href, src, attribute)

view : Html msg
view =
    div [ class "border-t grid grid-cols-[auto,1fr,auto] items-stretch" ]
        [ div [ class "h-full aspect-[1/3] flex items-center justify-center select-none" ]
            [ span [ class "uppercase tracking-widest leading-none [writing-mode:vertical-rl] [text-orientation:upright]" ] [ text "Contacts" ]
            ]
        , div [ class "self-stretch w-full h-full [container-type:size]" ]
            [ ul [ class "grid grid-rows-[1fr_1fr] h-full w-full text-left leading-none text-[min(calc(100cqh/2),10cqw)]" ]
                [ li [ class "flex items-center justify-start w-full" ]
                    [ a [ href "https://keybase.io/clarela6", class "block w-full" ] [ text "Keybase" ] ]
                , li [ class "flex items-center justify-start w-full" ]
                    [ a [ href "mailto:yaho@clarelab.moe", class "block w-full" ] [ text "yaho@clarelab.moe" ] ]
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
