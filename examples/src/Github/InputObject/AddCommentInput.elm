-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.AddCommentInput exposing (..)

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


{-| Encode a AddCommentInput into a value that can be used as an argument.
-}
encode : AddCommentInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "subjectId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.subjectId |> Just ), ( "body", Encode.string input.body |> Just ) ]


{-| Type for the AddCommentInput input object.
-}
type alias AddCommentInput =
    { clientMutationId : OptionalArgument String, subjectId : Github.Scalar.Id, body : String }
