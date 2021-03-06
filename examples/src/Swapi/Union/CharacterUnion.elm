-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 1.0.1
-- Target elm package version 4.1.0
-- https://github.com/dillonkearns/graphqelm


module Swapi.Union.CharacterUnion exposing (..)

import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode
import Swapi.Interface
import Swapi.Object
import Swapi.Union


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Swapi.Union.CharacterUnion) -> SelectionSet constructor Swapi.Union.CharacterUnion
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onHuman : SelectionSet selection Swapi.Object.Human -> FragmentSelectionSet selection Swapi.Union.CharacterUnion
onHuman (SelectionSet fields decoder) =
    FragmentSelectionSet "Human" fields decoder


onDroid : SelectionSet selection Swapi.Object.Droid -> FragmentSelectionSet selection Swapi.Union.CharacterUnion
onDroid (SelectionSet fields decoder) =
    FragmentSelectionSet "Droid" fields decoder
