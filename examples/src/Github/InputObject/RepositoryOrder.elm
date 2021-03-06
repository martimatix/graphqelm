-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.RepositoryOrder exposing (..)

import Github.Enum.OrderDirection
import Github.Enum.RepositoryOrderField
import Github.InputObject
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


{-| Encode a RepositoryOrder into a value that can be used as an argument.
-}
encode : RepositoryOrder -> Value
encode input =
    Encode.maybeObject
        [ ( "field", Encode.enum Github.Enum.RepositoryOrderField.toString input.field |> Just ), ( "direction", Encode.enum Github.Enum.OrderDirection.toString input.direction |> Just ) ]


{-| Type for the RepositoryOrder input object.
-}
type alias RepositoryOrder =
    { field : Github.Enum.RepositoryOrderField.RepositoryOrderField, direction : Github.Enum.OrderDirection.OrderDirection }
