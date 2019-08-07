import 'package:my_dart_app/user.dart';

main() {

  var u = new User("jj987");
  u.firstName = "Jane";
  u.lastName = "Jones";
  print("------");
  print("FIRST: " + u.firstName);
  print("LAST: " + u.lastName);

  var y = new User("jj456", firstName:"John", lastName:"Jones");
  print("------");
  print("FIRST: " + y.firstName);
  print("LAST: " + y.lastName);

  var m = User.mock();
  print("------");
  print("FIRST: " + m.firstName);
  print("LAST: " + m.lastName);
}
