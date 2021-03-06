-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.TextMatch exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TextMatch
selection constructor =
    Object.selection constructor


{-| The specific text fragment within the property matched on.
-}
fragment : FieldDecoder String Github.Object.TextMatch
fragment =
    Object.fieldDecoder "fragment" [] Decode.string


{-| Highlights within the matched fragment.
-}
highlights : SelectionSet selection Github.Object.TextMatchHighlight -> FieldDecoder (List (Maybe selection)) Github.Object.TextMatch
highlights object =
    Object.selectionFieldDecoder "highlights" [] object (identity >> Decode.maybe >> Decode.list)


{-| The property matched on.
-}
property : FieldDecoder String Github.Object.TextMatch
property =
    Object.fieldDecoder "property" [] Decode.string
