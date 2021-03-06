-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Object.PullRequest exposing (..)

import Github.Enum.CommentAuthorAssociation
import Github.Enum.CommentCannotUpdateReason
import Github.Enum.MergeableState
import Github.Enum.PullRequestReviewState
import Github.Enum.PullRequestState
import Github.Enum.ReactionContent
import Github.Enum.SubscriptionState
import Github.InputObject.ReactionOrder
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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PullRequest
selection constructor =
    Object.selection constructor


{-| The number of additions in this pull request.
-}
additions : FieldDecoder Int Github.Object.PullRequest
additions =
    Object.fieldDecoder "additions" [] Decode.int


{-| A list of Users assigned to this object.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
assignees : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.UserConnection -> FieldDecoder selection Github.Object.PullRequest
assignees fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "assignees" optionalArgs object identity


{-| The actor who authored the comment.
-}
author : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.PullRequest
author object =
    Object.selectionFieldDecoder "author" [] object (identity >> Decode.maybe)


{-| Author's association with the subject of the comment.
-}
authorAssociation : FieldDecoder Github.Enum.CommentAuthorAssociation.CommentAuthorAssociation Github.Object.PullRequest
authorAssociation =
    Object.fieldDecoder "authorAssociation" [] Github.Enum.CommentAuthorAssociation.decoder


{-| Identifies the base Ref associated with the pull request.
-}
baseRef : SelectionSet selection Github.Object.Ref -> FieldDecoder (Maybe selection) Github.Object.PullRequest
baseRef object =
    Object.selectionFieldDecoder "baseRef" [] object (identity >> Decode.maybe)


{-| Identifies the name of the base Ref associated with the pull request, even if the ref has been deleted.
-}
baseRefName : FieldDecoder String Github.Object.PullRequest
baseRefName =
    Object.fieldDecoder "baseRefName" [] Decode.string


{-| Identifies the body of the pull request.
-}
body : FieldDecoder String Github.Object.PullRequest
body =
    Object.fieldDecoder "body" [] Decode.string


{-| Identifies the body of the pull request rendered to HTML.
-}
bodyHTML : FieldDecoder Github.Scalar.Html Github.Object.PullRequest
bodyHTML =
    Object.fieldDecoder "bodyHTML" [] (Decode.string |> Decode.map Github.Scalar.Html)


{-| Identifies the body of the pull request rendered to text.
-}
bodyText : FieldDecoder String Github.Object.PullRequest
bodyText =
    Object.fieldDecoder "bodyText" [] Decode.string


{-| The number of changed files in this pull request.
-}
changedFiles : FieldDecoder Int Github.Object.PullRequest
changedFiles =
    Object.fieldDecoder "changedFiles" [] Decode.int


{-| `true` if the pull request is closed
-}
closed : FieldDecoder Bool Github.Object.PullRequest
closed =
    Object.fieldDecoder "closed" [] Decode.bool


{-| Identifies the date and time when the object was closed.
-}
closedAt : FieldDecoder (Maybe Github.Scalar.DateTime) Github.Object.PullRequest
closedAt =
    Object.fieldDecoder "closedAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime |> Decode.maybe)


{-| A list of comments associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.IssueCommentConnection -> FieldDecoder selection Github.Object.PullRequest
comments fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "comments" optionalArgs object identity


{-| A list of commits present in this pull request's head branch not present in the base branch.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
commits : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.PullRequestCommitConnection -> FieldDecoder selection Github.Object.PullRequest
commits fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "commits" optionalArgs object identity


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder Github.Scalar.DateTime Github.Object.PullRequest
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : FieldDecoder Bool Github.Object.PullRequest
createdViaEmail =
    Object.fieldDecoder "createdViaEmail" [] Decode.bool


{-| The number of deletions in this pull request.
-}
deletions : FieldDecoder Int Github.Object.PullRequest
deletions =
    Object.fieldDecoder "deletions" [] Decode.int


{-| The actor who edited this pull request's body.
-}
editor : SelectionSet selection Github.Interface.Actor -> FieldDecoder (Maybe selection) Github.Object.PullRequest
editor object =
    Object.selectionFieldDecoder "editor" [] object (identity >> Decode.maybe)


{-| Identifies the head Ref associated with the pull request.
-}
headRef : SelectionSet selection Github.Object.Ref -> FieldDecoder (Maybe selection) Github.Object.PullRequest
headRef object =
    Object.selectionFieldDecoder "headRef" [] object (identity >> Decode.maybe)


{-| Identifies the name of the head Ref associated with the pull request, even if the ref has been deleted.
-}
headRefName : FieldDecoder String Github.Object.PullRequest
headRefName =
    Object.fieldDecoder "headRefName" [] Decode.string


{-| The repository associated with this pull request's head Ref.
-}
headRepository : SelectionSet selection Github.Object.Repository -> FieldDecoder (Maybe selection) Github.Object.PullRequest
headRepository object =
    Object.selectionFieldDecoder "headRepository" [] object (identity >> Decode.maybe)


{-| The owner of the repository associated with this pull request's head Ref.
-}
headRepositoryOwner : SelectionSet selection Github.Interface.RepositoryOwner -> FieldDecoder (Maybe selection) Github.Object.PullRequest
headRepositoryOwner object =
    Object.selectionFieldDecoder "headRepositoryOwner" [] object (identity >> Decode.maybe)


id : FieldDecoder Github.Scalar.Id Github.Object.PullRequest
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map Github.Scalar.Id)


{-| The head and base repositories are different.
-}
isCrossRepository : FieldDecoder Bool Github.Object.PullRequest
isCrossRepository =
    Object.fieldDecoder "isCrossRepository" [] Decode.bool


{-| A list of labels associated with the object.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
labels : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.LabelConnection -> FieldDecoder (Maybe selection) Github.Object.PullRequest
labels fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "labels" optionalArgs object (identity >> Decode.maybe)


{-| The moment the editor made the last edit
-}
lastEditedAt : FieldDecoder (Maybe Github.Scalar.DateTime) Github.Object.PullRequest
lastEditedAt =
    Object.fieldDecoder "lastEditedAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime |> Decode.maybe)


{-| `true` if the pull request is locked
-}
locked : FieldDecoder Bool Github.Object.PullRequest
locked =
    Object.fieldDecoder "locked" [] Decode.bool


{-| The commit that was created when this pull request was merged.
-}
mergeCommit : SelectionSet selection Github.Object.Commit -> FieldDecoder (Maybe selection) Github.Object.PullRequest
mergeCommit object =
    Object.selectionFieldDecoder "mergeCommit" [] object (identity >> Decode.maybe)


{-| Whether or not the pull request can be merged based on the existence of merge conflicts.
-}
mergeable : FieldDecoder Github.Enum.MergeableState.MergeableState Github.Object.PullRequest
mergeable =
    Object.fieldDecoder "mergeable" [] Github.Enum.MergeableState.decoder


{-| Whether or not the pull request was merged.
-}
merged : FieldDecoder Bool Github.Object.PullRequest
merged =
    Object.fieldDecoder "merged" [] Decode.bool


{-| The date and time that the pull request was merged.
-}
mergedAt : FieldDecoder (Maybe Github.Scalar.DateTime) Github.Object.PullRequest
mergedAt =
    Object.fieldDecoder "mergedAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime |> Decode.maybe)


{-| Identifies the milestone associated with the pull request.
-}
milestone : SelectionSet selection Github.Object.Milestone -> FieldDecoder (Maybe selection) Github.Object.PullRequest
milestone object =
    Object.selectionFieldDecoder "milestone" [] object (identity >> Decode.maybe)


{-| Identifies the pull request number.
-}
number : FieldDecoder Int Github.Object.PullRequest
number =
    Object.fieldDecoder "number" [] Decode.int


{-| A list of Users that are participating in the Pull Request conversation.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
participants : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.UserConnection -> FieldDecoder selection Github.Object.PullRequest
participants fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "participants" optionalArgs object identity


{-| The commit that GitHub automatically generated to test if this pull request could be merged. This field will not return a value if the pull request is merged, or if the test merge commit is still being generated. See the `mergeable` field for more details on the mergeability of the pull request.
-}
potentialMergeCommit : SelectionSet selection Github.Object.Commit -> FieldDecoder (Maybe selection) Github.Object.PullRequest
potentialMergeCommit object =
    Object.selectionFieldDecoder "potentialMergeCommit" [] object (identity >> Decode.maybe)


{-| List of project cards associated with this pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
projectCards : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.ProjectCardConnection -> FieldDecoder selection Github.Object.PullRequest
projectCards fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "projectCards" optionalArgs object identity


{-| Identifies when the comment was published at.
-}
publishedAt : FieldDecoder (Maybe Github.Scalar.DateTime) Github.Object.PullRequest
publishedAt =
    Object.fieldDecoder "publishedAt" [] (Decode.string |> Decode.map Github.Scalar.DateTime |> Decode.maybe)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet selection Github.Object.ReactionGroup -> FieldDecoder (Maybe (List selection)) Github.Object.PullRequest
reactionGroups object =
    Object.selectionFieldDecoder "reactionGroups" [] object (identity >> Decode.list >> Decode.maybe)


{-| A list of Reactions left on the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Github.InputObject.ReactionOrder.ReactionOrder } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Github.InputObject.ReactionOrder.ReactionOrder }) -> SelectionSet selection Github.Object.ReactionConnection -> FieldDecoder selection Github.Object.PullRequest
reactions fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "content" filledInOptionals.content (Encode.enum Github.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy Github.InputObject.ReactionOrder.encode ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "reactions" optionalArgs object identity


{-| The repository associated with this node.
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Object.PullRequest
repository object =
    Object.selectionFieldDecoder "repository" [] object identity


{-| The HTTP path for this pull request.
-}
resourcePath : FieldDecoder Github.Scalar.Uri Github.Object.PullRequest
resourcePath =
    Object.fieldDecoder "resourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP path for reverting this pull request.
-}
revertResourcePath : FieldDecoder Github.Scalar.Uri Github.Object.PullRequest
revertResourcePath =
    Object.fieldDecoder "revertResourcePath" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| The HTTP URL for reverting this pull request.
-}
revertUrl : FieldDecoder Github.Scalar.Uri Github.Object.PullRequest
revertUrl =
    Object.fieldDecoder "revertUrl" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| A list of review requests associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
reviewRequests : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String }) -> SelectionSet selection Github.Object.ReviewRequestConnection -> FieldDecoder (Maybe selection) Github.Object.PullRequest
reviewRequests fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "reviewRequests" optionalArgs object (identity >> Decode.maybe)


{-| A list of reviews associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - states - A list of states to filter the reviews.
  - author - Filter by author of the review.

-}
reviews : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, states : OptionalArgument (List Github.Enum.PullRequestReviewState.PullRequestReviewState), author : OptionalArgument String } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, states : OptionalArgument (List Github.Enum.PullRequestReviewState.PullRequestReviewState), author : OptionalArgument String }) -> SelectionSet selection Github.Object.PullRequestReviewConnection -> FieldDecoder (Maybe selection) Github.Object.PullRequest
reviews fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, states = Absent, author = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum Github.Enum.PullRequestReviewState.toString |> Encode.list), Argument.optional "author" filledInOptionals.author Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "reviews" optionalArgs object (identity >> Decode.maybe)


{-| Identifies the state of the pull request.
-}
state : FieldDecoder Github.Enum.PullRequestState.PullRequestState Github.Object.PullRequest
state =
    Object.fieldDecoder "state" [] Github.Enum.PullRequestState.decoder


{-| A list of reviewer suggestions based on commit history and past review comments.
-}
suggestedReviewers : SelectionSet selection Github.Object.SuggestedReviewer -> FieldDecoder (List (Maybe selection)) Github.Object.PullRequest
suggestedReviewers object =
    Object.selectionFieldDecoder "suggestedReviewers" [] object (identity >> Decode.maybe >> Decode.list)


{-| A list of events, comments, commits, etc. associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - since - Allows filtering timeline events by a `since` timestamp.

-}
timeline : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, since : OptionalArgument Github.Scalar.DateTime } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, since : OptionalArgument Github.Scalar.DateTime }) -> SelectionSet selection Github.Object.PullRequestTimelineConnection -> FieldDecoder selection Github.Object.PullRequest
timeline fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, since = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "since" filledInOptionals.since (\(Github.Scalar.DateTime raw) -> Encode.string raw) ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "timeline" optionalArgs object identity


{-| Identifies the pull request title.
-}
title : FieldDecoder String Github.Object.PullRequest
title =
    Object.fieldDecoder "title" [] Decode.string


{-| The HTTP URL for this pull request.
-}
url : FieldDecoder Github.Scalar.Uri Github.Object.PullRequest
url =
    Object.fieldDecoder "url" [] (Decode.string |> Decode.map Github.Scalar.Uri)


{-| Can user react to this subject
-}
viewerCanReact : FieldDecoder Bool Github.Object.PullRequest
viewerCanReact =
    Object.fieldDecoder "viewerCanReact" [] Decode.bool


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : FieldDecoder Bool Github.Object.PullRequest
viewerCanSubscribe =
    Object.fieldDecoder "viewerCanSubscribe" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : FieldDecoder Bool Github.Object.PullRequest
viewerCanUpdate =
    Object.fieldDecoder "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : FieldDecoder (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Object.PullRequest
viewerCannotUpdateReasons =
    Object.fieldDecoder "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : FieldDecoder Bool Github.Object.PullRequest
viewerDidAuthor =
    Object.fieldDecoder "viewerDidAuthor" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : FieldDecoder Github.Enum.SubscriptionState.SubscriptionState Github.Object.PullRequest
viewerSubscription =
    Object.fieldDecoder "viewerSubscription" [] Github.Enum.SubscriptionState.decoder
