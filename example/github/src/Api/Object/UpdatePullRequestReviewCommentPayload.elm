module Api.Object.UpdatePullRequestReviewCommentPayload exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.UpdatePullRequestReviewCommentPayload
build constructor =
    Object.object constructor


clientMutationId : FieldDecoder String Api.Object.UpdatePullRequestReviewCommentPayload
clientMutationId =
    Field.fieldDecoder "clientMutationId" [] Decode.string


pullRequestReviewComment : Object pullRequestReviewComment Api.Object.PullRequestReviewComment -> FieldDecoder pullRequestReviewComment Api.Object.UpdatePullRequestReviewCommentPayload
pullRequestReviewComment object =
    Object.single "pullRequestReviewComment" [] object