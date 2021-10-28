module Main exposing (main)

import Browser exposing (Document)
import Css.Reset
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
        [ Css.Reset.meyerV2
        , Css.Reset.borderBoxV201408
        ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
