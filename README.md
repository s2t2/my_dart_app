A sample command-line application.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Prerequisites

### Dart

Detecting existing installations:

```sh
which dart #> /usr/local/bin/dart
dart --version #> Dart VM version: 2.4.0 (Wed Jun 19 11:53:45 2019 +0200) on "macos_x64"

```

Installing the dart language and the pub utility, if necessary:

```sh
brew tap dart-lang/dart
brew install dart
```

## Installation

Installing package dependencies:

```sh
pub get
```

> NOTE: the dev dependencies might not be getting installed because the linting doesn't seem to be working (analysis_options.yaml)

## Usage

Running the main script:

```sh
dart bin/main.dart
```

Try different debugging methods:

```sh
dart bin/debugging.dart
```
## Testing

```sh
dart test/my_dart_app_test.dart # is this the best way to invoke tests in dart?
```
