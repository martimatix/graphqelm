-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.UpdateProjectColumnInput exposing (..)

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


{-| Encode a UpdateProjectColumnInput into a value that can be used as an argument.
-}
encode : UpdateProjectColumnInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "projectColumnId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.projectColumnId |> Just ), ( "name", Encode.string input.name |> Just ) ]


{-| Type for the UpdateProjectColumnInput input object.
-}
type alias UpdateProjectColumnInput =
    { clientMutationId : OptionalArgument String, projectColumnId : Github.Scalar.Id, name : String }
