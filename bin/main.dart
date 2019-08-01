import "dart:developer";

import "package:my_dart_app/my_dart_app.dart" as my_dart_app;

main() {

  print("Hello world: ${my_dart_app.calculate()}!");

  print(my_dart_app.myMessage("YO YO YO"));

  print(anotherFunc());

  print(listOfNums()[0].toString());

  print(listOfObjs()[0]["a"]);

  var x = 1;
  print("X: ${x}");

  var y = 2;
  debugger();
  print("Y: ${y}");

  print(finalFunc());

}

anotherFunc(){
  return "ANOTHER FUNCTION";
}

finalFunc(){
  return "FINAL FUNCTION";
}

listOfNums(){
  var theList = [6,7,8];
  return theList;
}

listOfObjs(){
  var theList = [];
  theList.add({"a": 1, "b": 2});
  theList.add({"a": 3, "b": 4});
  return theList;
}
