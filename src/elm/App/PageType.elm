module App.PageType
    exposing
        ( Page(..)
        )

import Item.Model exposing (ItemId)


{-| Prevent circular dependency.
-}
type Page
    = AccessDenied
    | Dashboard
    | Item ItemId
    | PageNotFound
