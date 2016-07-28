module Main exposing (..)

import Html.App
import Messages exposing (Msg)
import Models exposing (Model)
import View exposing (view)
import Update exposing (update)

init : ( Model, Cmd Msg ) -- Simple function signature, no args, returns a tuple consisting of a Model and a Cmd Msg
init =
  ( "Hello", Cmd.none ) -- In this case, there is no Msg, because the Cmd is empty (none)

subscriptions : Model -> Sub Msg -- Takes a model and returns a Sub with a Msg as an arg
subscriptions model =
  Sub.none

main : Program Never
main =
  Html.App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
