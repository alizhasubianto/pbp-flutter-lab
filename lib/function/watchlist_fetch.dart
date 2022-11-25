import 'package:counter_7/model/modelwatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Mywatchlist>> fetchWatchList() async {
    
  var url =
      Uri.parse('https://tugas2-alizha.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<Mywatchlist> listWatch = [];
  for (var d in data) {
    if (d != null) {
      listWatch.add(Mywatchlist.fromJson(d));
    }
  }
  return listWatch;
}