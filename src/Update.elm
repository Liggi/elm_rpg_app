module Update exposing (..)

import Messages exposing(Msg(..)) -- The Msg(..) exposes all values from the Union Type (just NoOp, in this case)
import Models exposing(Model)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    NoOp ->
      ( model, Cmd.none )
