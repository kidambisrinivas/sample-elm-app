import StartApp.Simple exposing (start)

import Pages.Signup.Model
import Pages.Signup.Update
import Pages.Signup.View

main =
  start
    { model = Pages.Signup.Model.initialModel
    , view = Pages.Signup.View.view
    , update = Pages.Signup.Update.update
    }

