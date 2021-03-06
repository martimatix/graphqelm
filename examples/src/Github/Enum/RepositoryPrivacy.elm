-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.RepositoryPrivacy exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The privacy of a repository

  - Public - Public
  - Private - Private

-}
type RepositoryPrivacy
    = Public
    | Private


decoder : Decoder RepositoryPrivacy
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PUBLIC" ->
                        Decode.succeed Public

                    "PRIVATE" ->
                        Decode.succeed Private

                    _ ->
                        Decode.fail ("Invalid RepositoryPrivacy type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : RepositoryPrivacy -> String
toString enum =
    case enum of
        Public ->
            "PUBLIC"

        Private ->
            "PRIVATE"
