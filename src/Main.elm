module Main exposing (main)

import Browser exposing (Document)
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


header : Html Msg
header =
    Html.header []
        []


bodyMain : Html Msg
bodyMain =
    Html.main_ []
        []


footer : Html Msg
footer =
    Html.footer []
        []
