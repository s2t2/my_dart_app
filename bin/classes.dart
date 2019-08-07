import 'package:my_dart_app/user.dart';

main() {

  var u = new User("jj987");
  u.firstName = "Jane";
  u.lastName = "Jones";

  var y = new User("jj456", firstName: "John", lastName: "Jones");

  var m = User.mock();

  for (var user in [u, y, m]) {

    print("------");
    print("DATA TYPE: " + user.runtimeType.toString()); // use x.runtimeType to detect datatype
    print("IS USER? " + (user is User).toString());
    print("FIRST: " + user.firstName);
    print("LAST: " + user.lastName);
    print("FULL: " + user.fullName());
    print(user.speakUp("Hello World"));

  }
}
