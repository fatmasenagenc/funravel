import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/concert_model.dart';

const String username = 'MzA4MzY2ODh8MTY3MDM1Njc1My4xMzUxOTkz';
const String password = '7dc033ed98a63486c6a14600c74a7c6f47332d7c3deee0620bc15a9384eca54a';
final String basicAuth = 'Basic ' + base64.encode(utf8.encode('$username:$password'));


Future<List<Concert>?> getConcertsData() async {
  try{
    http.Response result = await http.get(Uri.parse("https://api.seatgeek.com/2/events?datetime_utc.gt=2022-12-15"),
        headers: <String, String>{'authorization': basicAuth}
    );
    // print(result.statusCode);
    print(json.decode(result.body)["events"][0]);

    print(Concert.fromJson(json.decode(result.body)["events"][0]));

  }catch (e) {
    print("CAUGHT ERROR - WHILE GETTING CONCEWRT DATA - $e");
    return null;
  }
}
