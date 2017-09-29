module Pages.Items.View exposing (view)

import App.PageType exposing (Page(..))
import Date exposing (Date)
import Dict
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Attributes.Aria exposing (ariaLabel)
import Html.Events exposing (on, onClick, onInput, onWithOptions)
import Pages.Items.Model exposing (Model, Msg(..))
import Item.Model exposing (Item, ItemId, ItemsDict)
import Table exposing (..)
import User.Model exposing (User)
import Utils.Html exposing (emptyNode)


view : Date -> User -> ItemsDict -> Model -> Html Msg
view currentDate currentUser items model =
    div [] [ text "Items page" ]
