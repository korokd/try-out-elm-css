module Main exposing (main)

import Browser exposing (Document)
import Css exposing (Px)
import Css.Reset
import Html.Styled as Html exposing (Html)
import Html.Styled.Attributes as Attributes
import Types exposing (Flags, Model, Msg)


main : Program Flags Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( (), Cmd.none )


view : Model -> Document Msg
view model =
    { title = "Gnomicidio"
    , body =
        [ Html.toUnstyled bodyWithResets
        ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


bodyWithResets : Html Msg
bodyWithResets =
    Html.div [ Attributes.id "root" ]
        [ Css.Reset.meyerV2
        , Css.Reset.borderBoxV201408
        , header
        , bodyMain
        , footer
        ]


headerHeight : Px
headerHeight =
    Css.px 60


header : Html Msg
header =
    Html.header
        [ Attributes.css
            [ Css.height headerHeight
            , Css.width (Css.pct 100)
            , Css.backgroundColor (Css.rgb 0 0 0)
            , Css.padding2 (Css.px 0) (Css.em 1)
            , Css.displayFlex
            , Css.justifyContent Css.spaceBetween
            , Css.alignItems Css.center
            ]
        ]
        [ Html.img
            [ Attributes.src "/static/gnomicidio-logo-hand-drawn.jpeg"
            , Attributes.css
                [ Css.height headerHeight
                ]
            ]
            []
        , makeNav navItems
        ]


navItems : List String
navItems =
    [ "Regras"
    ]


makeNav : List String -> Html Msg
makeNav items =
    Html.nav
        [ Attributes.css
            [ Css.color (Css.rgb 255 255 255)
            ]
        ]
        [ Html.ul []
            [ Html.li [] <|
                List.map makeNavItem items
            ]
        ]


makeNavItem : String -> Html Msg
makeNavItem item =
    Html.a
        [ Attributes.css
            [ Css.cursor Css.pointer
            ]
        ]
        [ Html.text item ]


bodyMain : Html Msg
bodyMain =
    Html.main_ []
        []


footer : Html Msg
footer =
    Html.footer []
        []
