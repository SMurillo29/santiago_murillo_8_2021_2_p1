import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:santiago_murillo_8_2021_2_p1/models/countrie.dart';

class ApiHelter {
  Future<List<Countrie>> getCountries() async {
    List<Countrie> countries = [];
    var url = Uri.parse('https://restcountries.com/v2/name/colombia');
    var response = await http.get(url);
    if (response.statusCode == 200) {      
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      for (var item in jsonData) {
        countries.add(Countrie(
            item["name"],
            item["alpha2Code"],
            item["alpha3Code"],
            //item["capital"],
            item["subregion"],
            item["region"],
            item["population"],
            item["demonym"],
            //item["area"],
            item["nativeName"],
            item["numericCode"],
            item["flag"],            
            item["independent"]));
      }
    } else {
      throw Exception("Falló la petición");
    }
    return countries;
  }
}
