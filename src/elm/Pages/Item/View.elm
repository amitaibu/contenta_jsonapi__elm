module Pages.Item.View exposing (view)

import Date exposing (Date)
import Html exposing (..)
import Html.Attributes exposing (..)
import Pages.Item.Model exposing (Msg(..))
import Item.Model exposing (ItemId, Item)
import User.Model exposing (User)
import Utils.Html exposing (divider, showMaybe)


view : Date -> User -> ItemId -> Item -> Html Msg
view currentDate currentUser itemId item =
    div []
        [ div
            [ class "ui secondary pointing fluid menu" ]
            [ h2
                [ class "ui header" ]
                [ text item.name ]
            , div
                [ class "right menu" ]
                [ a
                    [ class "ui active item" ]
                    [ text "Overview" ]
                ]
            ]
        , div []
            [ img [ src item.image, alt item.name ] []
            ]
        ]
