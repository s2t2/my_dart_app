
class User {

  //
  // ATTRIBUTES
  //

  String username;
  String firstName;
  String lastName;
  List<String> favFlavors;
  Map prefs = {"audio": true, "notifications": false}; // default vals

  //
  // METHODS
  //

  String fullName() {
    return "${this.firstName} ${this.lastName}";
  }

  //
  // CONSTRUCTOR(S)
  //

  // this is the main constructor which allows you to pass arguments in when initializing
  // needs at
  User(this.username, {this.firstName, this.lastName, this.favFlavors, this.prefs});

  // this is a named constructor ... example: `u = User.mock`
  User.mock() {
    username = "mm123";
    firstName = "Mollie";
    lastName = "Marshal";
    favFlavors = ["mocha", "vanilla"];
    prefs = {"audio": false, "notifications": false};
  }

}
