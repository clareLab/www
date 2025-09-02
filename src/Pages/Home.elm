module Pages.Home exposing (view)

import Html exposing (Html, a, br, div, h1, h2, i, img, li, p, small, text, ul)
import Html.Attributes exposing (alt, href, src)

view : Html msg
view =
    div []
        [ h1 [] [ text "clareLab" ]
        , img [ src "/images/logo.jpg", alt "clareLab" ] []
        , p []
            [ i []
                [ small []
                    [ text "今日も陽が昇り、また沈む。"
                    , br [] []
                    , text "朝咲く花が、首から落ちる。"
                    , br [] []
                    , text "今日も陽が沈み、また昇る。"
                    , br [] []
                    , text "辺り一面、花が咲く。"
                    , br [] []
                    , text "けれど昨日とは別の花。"
                    ]
                ]
            ]
        , h2 [] [ text "About Me" ]
        , ul []
            [ li [] [ text "I came from China (Shenzhen), living in Italy, potentially moving to Canada, Germany or Japan." ]
            , li [] [ text "I speak Chinese and English. I am learning Italian and Japanese, also plan to learn French, German and Swedish." ]
            , li [] [ text "I develop games and write articles about immigration as well as experience related to language learning." ]
            , li [] [ text "I own a server and know a bit of programming." ]
            ]
        , h2 [] [ text "Education" ]
        , ul [] [ li [] [ text "Bachelor of Computer Science, University of Trento, 2024-2027" ] ]
        , h2 [] [ text "Internal Links" ]
        , ul []
            [ li [] [ a [ href "https://mofufu.moe" ] [ text "Mofufu" ] ]
            , li [] [ a [ href "https://blog.clarelab.moe" ] [ text "Blog" ] ]
            , li [] [ a [ href "https://wiki.clarelab.moe" ] [ text "Wiki" ] ]
            ]
        , h2 [] [ text "Social Media" ]
        , ul []
            [ li [] [ a [ href "https://space.bilibili.com/453838432" ] [ text "BiliBili" ] ]
            , li [] [ a [ href "https://bsky.app/profile/clarelab.bsky.social" ] [ text "Bluesky" ] ]
            , li [] [ a [ href "https://github.com/clareLab" ] [ text "GitHub" ] ]
            , li [] [ a [ href "https://clarelab.itch.io" ] [ text "itch.io" ] ]
            , li [] [ a [ href "https://misskey.io/@clarelab" ] [ text "Misskey" ] ]
            , li [] [ a [ href "https://www.reddit.com/user/No-Lab4175" ] [ text "Reddit" ] ]
            , li [] [ a [ href "https://x.com/c1areLab" ] [ text "X" ] ]
            , li [] [ a [ href "https://www.youtube.com/@clareLa6" ] [ text "YouTube" ] ]
            ]
        ]
