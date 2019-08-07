
import "package:http/http.dart" as http;

// FYI: the request's "await" keyword requires the main function to have a "async" keyword
main() async {

  var requestUrl = "https://raw.githubusercontent.com/data-creative/NextTrainCT/master/data/stations.json";
  print("REQUEST URL: " + requestUrl);

  // GET

  print("--------");
  var response = await http.get(requestUrl);
  print("RESPONSE: ${response.runtimeType}");
  print("STATUS: ${response.statusCode}");
  print("BODY: ${response.body}");



  // POST

  //var results = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  //print("STATUS: ${results.statusCode}");
  //print("BODY: ${results.body}");

}
