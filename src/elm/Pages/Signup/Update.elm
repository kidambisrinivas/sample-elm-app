module Pages.Signup.Update where

import Pages.Signup.Model exposing (..)

update : Action -> Model -> Model
update action model =
  case action of
    Increment ->
      model
    Decrement ->
      model
