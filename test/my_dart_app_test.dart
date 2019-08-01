import "package:my_dart_app/my_dart_app.dart";
import "package:test/test.dart"; // defines test() function

void main() {
  test("calculate", () {
    //expect(calculate(), 42);
    assert(calculate() == 42);
  });
}
