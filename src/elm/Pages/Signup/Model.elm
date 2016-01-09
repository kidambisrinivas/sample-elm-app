module Pages.Signup.Model where

type alias Model =
  { username: String,
    password: String
  }

initialModel : Model
initialModel =
  { username = ""
  , password = ""
  }

type Action = Increment | Decrement
