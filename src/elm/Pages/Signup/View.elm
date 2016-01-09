module Pages.Signup.View where

-- Elm packages

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (on, onClick, onSubmit, targetValue)
import String exposing (isEmpty)

-- Local modules

import Pages.Signup.Model exposing (Model, initialModel, Action)

view : Signal.Address Action -> Model -> Html
view address model =
  div []
    [ div [ class "header-panel shadow-z-2" ]
        [ div [ class "container-fluid" ]
            [ div [ class "row" ]
                [ div [ class "col-xs-3" ]
                    [ h1 []
                        [ text "Paper Elements" ]
                    ]
                ]
            ]
        ]
    , div [ class "container-fluid main" ]
        [ div [ class "row" ]
            [ nav [ class "col-xs-3 menu" ]
                [ ul []
                    [ li [ class "active withripple", attribute "data-target" "#about" ]
                        [ text "Material Design for Bootstrap" ]
                    , li [ class "withripple", attribute "data-target" "#getting-started" ]
                        [ text "Getting Started" ]
                    , li []
                        [ a [ href "bootstrap-elements.html", target "_blank" ]
                            [ text "Bootstrap elements "
                            , i [ class "mdi-action-open-in-new" ]
                                []
                            ]
                        ]
                    , li [ class "withripple", attribute "data-target" "#checkbox" ]
                        [ text "Checkbox" ]
                    , li [ class "withripple", attribute "data-target" "#radio-button" ]
                        [ text "Radio Button" ]
                    , li [ class "withripple", attribute "data-target" "#toggle-button" ]
                        [ text "Toggle Button" ]
                    , li [ class "withripple", attribute "data-target" "#input" ]
                        [ text "Input" ]
                    , li [ class "withripple", attribute "data-target" "#fileinput" ]
                        [ text "File Input" ]
                    , li [ class "withripple", attribute "data-target" "#navbar" ]
                        [ text "Navbar" ]
                    , li [ class "withripple", attribute "data-target" "#progress-bar" ]
                        [ text "Progress Bar" ]
                    , li [ class "withripple", attribute "data-target" "#slider" ]
                        [ text "Slider" ]
                    , li [ class "withripple", attribute "data-target" "#dropdown" ]
                        [ text "Dropdown (Work in progress)" ]
                    , li [ class "withripple", attribute "data-target" "#dropdown-menu" ]
                        [ text "Dropdown Menu" ]
                    , li [ class "withripple", attribute "data-target" "#dialog" ]
                        [ text "Dialog" ]
                    ]
                ]
            , div [ class "pages col-xs-9" ]
                [ div [ class "row" ]
                    [ div [ class "col-xs-10" ]
                        [ div [ class "well page active", id "about" ]
                            [ h1 [ class "header" ]
                                [ text "Signup" ]
                            , Html.form [ class "form-horizontal" ]
                                [ fieldset []
                                    [ div [ class "form-group label-floating" ]
                                        [ label [ class "control-label", for "first_name" ]
                                            [ text "First Name" ]
                                        , input [ class "form-control", id "first_name", type' "text" ]
                                            []
                                        ]
                                    , div [ class "form-group label-floating" ]
                                        [ label [ class "control-label", for "middle_name" ]
                                            [ text "Middle Name" ]
                                        , input [ class "form-control", id "middle_name", type' "text" ]
                                            []
                                        ]
                                    , div [ class "form-group label-floating" ]
                                        [ label [ class "control-label", for "last_name" ]
                                            [ text "Last Name" ]
                                        , input [ class "form-control", id "last_name", type' "text" ]
                                            []
                                        ]
                                    , div [ class "form-group label-floating" ]
                                        [ label [ class "control-label", for "dob" ]
                                            [ text "DOB" ]
                                        , input [ class "form-control", id "dob", type' "text" ]
                                            []
                                        ]
                                    , div [ class "form-group" ]
                                        [ label [ class "col-md-2 control-label" ]
                                            [ text "Gender" ]
                                        , div [ class "col-md-10" ]
                                            [ div [ class "radio radio-primary" ]
                                                [ label []
                                                    [ input [ checked True, id "MALE", name "gender", type' "radio", value "MALE" ]
                                                        []
                                                    , text "Male          "
                                                    ]
                                                ]
                                            , div [ class "radio radio-primary" ]
                                                [ label []
                                                    [ input [ id "FEMALE", name "gender", type' "radio", value "FEMALE" ]
                                                        []
                                                    , text "Female          "
                                                    ]
                                                ]
                                            ]
                                        ]
                                    , div [ class "form-group label-floating" ]
                                        [ label [ class "control-label", for "user_id" ]
                                            [ text "User ID" ]
                                        , input [ class "form-control", id "user_id", type' "text" ]
                                            []
                                        , p [ class "help-block" ]
                                            [ text "7-8 characters" ]
                                        ]
                                    , div [ class "form-group label-floating" ]
                                        [ label [ class "control-label", for "email_id" ]
                                            [ text "Email ID" ]
                                        , input [ class "form-control", id "email_id", type' "text" ]
                                            []
                                        , p [ class "help-block" ]
                                            [ text "Personal Email ID" ]
                                        ]
                                    , div [ class "form-group label-floating" ]
                                        [ label [ class "control-label", for "password" ]
                                            [ text "Password" ]
                                        , input [ class "form-control", id "password", type' "text" ]
                                            []
                                        , p [ class "help-block" ]
                                            [ text "Password should be 8-15 characters with number" ]
                                        ]
                                    , div [ class "form-group" ]
                                        [ div [ class "col-md-10 col-md-offset-2" ]
                                            [ button [ class "btn btn-default", type' "button" ]
                                                [ text "Cancel" ]
                                            , button [ class "btn btn-primary", type' "submit" ]
                                                [ text "Submit" ]
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]