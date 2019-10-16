module Main exposing (Model, Msg(..), main, update, view)

import Browser exposing (sandbox)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model =
    { message : String }


type Msg
    = Message String


init : Model
init =
    Model "Hello this is state"


update : Msg -> Model -> Model
update msg model =
    case msg of
        Message newMessage ->
            { model | message = newMessage }


view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Type Something", onInput Message ] []
        , div [] [ text model.message ]
        ]


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }
