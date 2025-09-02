module Components.Footer exposing (view)

import Html exposing (Html, a, div, li, span, text, ul, node)
import Html.Attributes exposing (class, href, attribute)

view : Html msg
view =
    div [ class "grid grid-cols-2 md:grid-cols-[auto,1fr,1fr] items-stretch w-full" ]
        [ div [ class "flex items-center justify-center select-none w-full h-full [aspect-ratio:3/1] md:[aspect-ratio:auto] md:h-full" ]
            [ span [ class "uppercase tracking-widest leading-none [writing-mode:vertical-rl] [text-orientation:upright]" ] [ text "Contacts" ] ]
        , div [ class "min-w-0 self-stretch w-full h-full [container-type:size] [aspect-ratio:3/1] md:[aspect-ratio:auto] md:h-full" ]
            [ ul [ class "grid grid-rows-[1fr_1fr] h-full w-full text-left leading-none text-[min(calc(100cqh/2),10cqw)]" ]
                [ li [ class "flex items-center justify-start w-full h-full" ]
                    [ a [ href "https://keybase.io/clarela6", class "block w-full truncate" ] [ text "Keybase" ] ]
                , li [ class "flex items-center justify-start w-full h-full" ]
                    [ a [ href "mailto:yaho@clarelab.moe", class "block w-full truncate" ] [ text "yaho@clarelab.moe" ] ]
                ]
            ]
        , div [ class "col-span-2 md:col-span-1 flex items-center justify-end w-full h-full" ]
            [ div [ class "w-full h-full [aspect-ratio:6/1] md:[aspect-ratio:auto] md:h-full" ]
                [ node "object"
                    [ attribute "data" "https://counter.clarelab.moe/@www?name=www&theme=rule34&padding=8&offset=0&align=center&scale=2&pixelated=1&darkmode=0"
                    , attribute "type" "image/svg+xml"
                    , class "block w-full h-full"
                    ]
                    []
                ]
            ]
        ]
