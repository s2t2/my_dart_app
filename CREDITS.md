# Credits, Notes, and Reference

## Previous Version of the App

  + https://github.com/data-creative/NextTrainCT

## Flutter Installation on Mac

  + https://appdividend.com/2018/12/10/how-to-install-flutter-on-mac/
  + https://flutter.dev/
  + https://flutter.dev/docs/get-started/install/macos
  + https://flutter.dev/docs/get-started/install/macos#update-your-path
  + https://flutter.dev/docs/get-started/editor?tab=vscode
  + restart VS code, then run "Flutter: Run Flutter Doctor" in the VS Code command pallete, or `flutter doctor` in the terminal. both should work. resolve any issues raised by the doctor.
  + optionally run `flutter config --no-analytics`

### Android Studio Configuration

  + https://flutter.dev/docs/get-started/install/macos#install-android-studio
  + in Android Studio: Configure > Plugins, install the "flutter" plugin by flutter.io, and restart the application

#### Acceleration

  + https://developer.android.com/studio/run/emulator-acceleration
  + "When you create an Android Virtual Device (AVD) in the AVD Manager, you can specify whether the emulator should use hardware or software to emulate the GPU of the AVD. Hardware acceleration is recommended and is typically faster. However, you might need to use software acceleration if your computer uses graphics drivers that aren't compatible with the emulator."
  + "SDK Tools: Latest release recommended (version 17 minimum)"
  + "SDK Platform: Latest release recommended (Android 4.0.3, Revision 3, minimum)"
  + https://developer.android.com/studio/run/emulator-commandline#starting
  + `emulator -list-avds`

### Emulator / Virtual Device

  + "need an Android device running Android 4.1 (API level 16) or higher."
  + https://flutter.dev/docs/get-started/install/macos#set-up-the-android-emulator
  + create a new device

### New App

  + vs code command pallette: "Flutter: New Project". this invokes `flutter create --ios-language objc --android-language java .`
  + "In order to run your application, type: `flutter run`"
  + "Your application code is in ./lib/main.dart."

### Running the App

  + from Android Studio > AVD Manager, run the emulator
  + https://flutter.dev/docs/get-started/test-drive?tab=vscode
  + https://dartcode.org/docs/quickly-switching-between-flutter-devices/
  + vs code command pallette: "Flutter: Select Device" to verify the device is running
  + press F5 to run the app on the emulator (might need to hold "fn" key to do it)
  + ... "Launching lib/main.dart on Android SDK built for x86 in debug mode..."

### Editing the App

  + edit components in the lib/main.dart file and watch hot reload update the app in the emulator. pretty cool.

## Flutter Framework

  + `Widget`, `StatelessWidget`, `StatefulWidget` `State` come from `package:flutter/src/widgets/framework.dart`
  + `MaterialApp` and `ThemeData` comes from `package:flutter/material.dart`
  + https://youtu.be/5VbAwhBBHsg

### Material Design Components

  + https://github.com/flutter/flutter/blob/master/packages/flutter/lib/material.dart
  + https://flutter.dev/docs/development/ui/widgets/material
  + https://api.flutter.dev/flutter/material/material-library.html
  + https://api.flutter.dev/flutter/material/MaterialApp-class.html
  + https://www.youtube.com/watch?v=DL0Ix1lnC4w

### Testing Flutter Apps

  + https://flutter.dev/docs/testing
  + https://medium.com/flutter/test-flutter-apps-on-travis-3fd5142ecd8c

### Debugging Flutter Apps

  + https://flutter.dev/docs/testing/code-debugging
  + https://flutter.dev/docs/testing/code-debugging#logging
  + https://flutter.dev/docs/testing/code-debugging#setting-breakpoints
  + Hmm only see print statements when running via the terminal

## Dart Language Reference

  + https://dart.dev/guides/language
  + https://dart.dev/guides/language/language-tour
  + https://dart.dev/guides/language/effective-dart
  + [Loading code from other files](https://stackoverflow.com/a/48875430/670433)
  + https://flutter.dev/docs/get-started/flutter-for/react-native-devs
  + "If you're using the Flutter SDK, don’t use the pub command directly. Instead use the flutter pub command, as described in Using packages on the Flutter website."
  + `flutter pub run lib/my_script.dart`
  + when I run the script the breakpoint pauses but i'm not able to interact.
  + https://stackoverflow.com/questions/57242352/how-to-interact-with-dart-debugger-from-the-command-line
  + https://dart.dev/tutorials/server/get-started
  + https://flutter.dev/docs/testing/build-modes#debug
  + https://flutter.dev/docs/testing/build-modes#profile
  + https://flutter.dev/docs/development/tools/devtools/cli
  + https://flutter.dev/docs/development/tools/devtools/debugger
  + VS Code Command Pallette: "Dart: New Project" .... needs stagehand. `pub global activate stagehand`
  + https://pub.dev/packages/stagehand
  + https://github.com/dart-lang/stagehand
  + [Installing dart via Homebrew](https://dart.dev/get-dart): `brew tap dart-lang/dart` and `brew install dart`
  + Running the script: `dart bin/main.dart`
  + Scripts go in the bin/ dir. Imports / modules go in the lib/ dir.
  + https://stackoverflow.com/questions/32108457/whats-the-difference-between-pub-dependencies-and-dev-dependencies
  + https://dart.dev/tools/pub/dependencies#dev-dependencies
  + https://dart.dev/tools/pub/pubspec
  + https://docs.travis-ci.com/user/languages/dart

### Debugging


```dart
import "dart:developer";

main() {

  var x = 1;
  print("X: ${x}");

  var y = 2;
  debugger();
  print("Y: ${y}");

}
```

```sh
dart --observe bin/main.dart # then go visit the URL
```

Not able to interact...



```
Debugging isolate isolate 868979621 'main'
Type 'h' for help
Paused at main.dart:22:18
$ y
No such command: 'y'
$ h
List of commands:

break        - Add a breakpoint by source location or function name (hotkey: [F8])
clear        - Remove a breakpoint by source location or function name (hotkey: [F8])
cls          - Clear the console
continue, c  - Resume execution of the isolate (hotkey: [F7])
delete       - Remove a breakpoint by breakpoint id
down         - Move down one or more frames (hotkey: [Page Down])
finish       - Continue running the isolate until the current function exits
frame, f     - Set the current frame
help         - List commands or provide details about a specific command
info         - Show information on a variety of topics
isolate, i   - Switch, list, rename, or reload isolates
log          - Control which log messages are displayed
next, n      - Continue running the isolate until it reaches the next source location in the current function (hotkey: [F9])
next-async   - Step over await or yield
next-sync    - Run until return/unwind to current activation.
pause        - Pause the isolate (hotkey: [Ctrl ;])
print, p     - Evaluate and print an expression in the current frame
refresh      - Refresh debugging information of various sorts
reload       - Reload the sources for the current isolate
rewind       - Rewind the stack to a previous frame
set          - Set a debugger option
step, s      - Continue running the isolate until it reaches the next source location (hotkey: [F10]
up           - Move up one or more frames (hotkey: [Page Up])
vm           - Manage a Dart virtual machine

For more information on a specific command type 'help <command>'
For a list of hotkeys type 'help hotkeys'

Command prefixes are accepted (e.g. 'h' for 'help')
Hit [TAB] to complete a command (try 'is[TAB][TAB]')
Hit [ENTER] to repeat the last command
Use up/down arrow for command history

$ print(y)
No such command: 'print(y)'
$ p(y)
No such command: 'p(y)'
$ next
Continuing...
Paused at main.dart:22:3
```


### Classes

  + https://dart.dev/guides/language/language-tour#classes
  + https://www.tutorialspoint.com/dart_programming/dart_programming_classes

``` dart
class class_name {
   <fields>
   <getters/setters>
   <constructors>
   <functions>
}
```

  + https://www.w3adda.com/dart-tutorial/dart-classes
  + https://dart.dev/guides/language/language-tour#instance-variables
  + https://stackoverflow.com/a/55769496/670433
  + https://stackoverflow.com/a/54346031/670433

### The `http` Package

  + https://pub.dev/packages/http
  + https://github.com/dart-lang/http
  + https://pub.dev/documentation/http/latest/
