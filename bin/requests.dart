
import "dart:convert";

import "package:http/http.dart" as http;

// FYI: the request's "await" keyword requires the main function to have a "async" keyword
main() async {

  //var requestUrl = "https://raw.githubusercontent.com/data-creative/NextTrainCT/master/data/stations.json";
  //< malformed JSON raises FormatException TODO: handle
  var requestUrl = "https://gist.githubusercontent.com/s2t2/3a5c733e11dfc4d646ef717a65f37f44/raw/4bf8685a85cf30a86d8140b9b0d9c4c572898c25/gistfile1.txt";
  print("REQUEST URL: " + requestUrl);

  // GET

  print("--------");
  var response = await http.get(requestUrl);
  print("RESPONSE (${response.runtimeType})..."); // > Response
  print("STATUS: ${response.statusCode}");
  print("BODY (${response.body.runtimeType})..."); //> String
  //print(response.body)

  var stations = jsonDecode(response.body);
  assert(stations is List);
  print("STATIONS (${stations.length}):");
  print(stations[0].toString());

  // POST

  //var results = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  //print("STATUS: ${results.statusCode}");
  //print("BODY: ${results.body}");

}
