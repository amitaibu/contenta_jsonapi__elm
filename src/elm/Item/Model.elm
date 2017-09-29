module Item.Model
    exposing
        ( Item
        , ItemId(..)
        , ItemsDict
        )

import EveryDictList exposing (EveryDictList)


type ItemId
    = ItemId String


type alias Item =
    { name : String
    , image : String
    }


type alias ItemsDict =
    EveryDictList ItemId Item
