# Changelog

All notable changes to
[the `graphqelm` elm package](http://package.elm-lang.org/packages/dillonkearns/graphqelm/latest)
will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [4.1.0] - 2018-01-08

### Added

* Encode functions to support generated code for input objects.
  There is now no reason for users to consume the Encode module directly! It's
  all done under the hood by the generated code.

## [4.0.1] - 2018-01-07

### Fixed

* Fix bug that excluded arguments when serializing leaves in document.
