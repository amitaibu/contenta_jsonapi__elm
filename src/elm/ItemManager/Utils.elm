module ItemManager.Utils
    exposing
        ( getItem
        , wrapItemsDict
        , unwrapItemsDict
        )

import EveryDictList exposing (EveryDictList)
import Item.Model exposing (Item, ItemId, ItemsDict)
import ItemManager.Model as ItemManager
import RemoteData exposing (RemoteData(..), WebData)


getItem : ItemId -> ItemManager.Model -> WebData Item
getItem itemId model =
    EveryDictList.get itemId model.items
        |> Maybe.withDefault NotAsked


wrapItemsDict : ItemsDict -> EveryDictList ItemId (WebData Item)
wrapItemsDict =
    EveryDictList.map (\_ item -> Success item)


unwrapItemsDict : EveryDictList ItemId (WebData Item) -> ItemsDict
unwrapItemsDict wrappedItemsDict =
    wrappedItemsDict
        |> EveryDictList.foldl
            (\itemId wrappedItem accum ->
                case wrappedItem of
                    Success item ->
                        ( itemId, item ) :: accum

                    _ ->
                        accum
            )
            []
        |> EveryDictList.fromList
