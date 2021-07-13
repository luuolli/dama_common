import 'dart:convert';
import 'dart:io';

Future<dynamic> jsonToString(String fileName) async {
  var path = 'test/Mocks/$fileName.json';
  var file = File(path);
  var jsonString = await file.readAsString();
  return json.decode(jsonString);
}
