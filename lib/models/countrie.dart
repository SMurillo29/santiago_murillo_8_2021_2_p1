import 'currency.dart';
import 'flag.dart';

class Countrie {
  late String name;
  //late List<String> topLevelDomain;
  late String alpha2Code;
  late String alpha3Code;
  //late List<String> callingCodes;
  //late String capital;
  //late List<String> altSpellings;
  late String subregion;
  late String region;
  late int population;
  //late List<int> latlng;
  late String demonym;
  //late double area;
  //late List<String> timezones;
  //late List<String> borders;
  late String nativeName;
  late String numericCode;
  late String flag;  
  //late String cioc;
  late bool independent;
  late Flags flags;
  //late List<Currencie> currencies;


  Countrie(
      String name,
      //List<String> topLevelDomain,
      String alpha2Code,
      String alpha3Code,
      //List<String> callingCodes,
      //String capital,
      //List<String> altSpellings,
      String subregion,
      String region,
      int population,
      //List<int> latlng,
      String demonym,
      //double area,
      //List<String> timezones,
      //List<String> borders,
      String nativeName,
      String numericCode,
      String flag,
      //String cioc,
      bool independent,
      Flags flags,
      //List<Currencie> currencies
      ) {
    this.name = name;
    //this.topLevelDomain = topLevelDomain;
    this.alpha2Code = alpha2Code;
    this.alpha3Code = alpha3Code;
    //this.callingCodes = callingCodes;
    //this.capital = capital;
    //this.altSpellings = altSpellings;
    this.subregion = subregion;
    this.region = region;
    this.population = population;
    //this.latlng = latlng;
    this.demonym = demonym;
    //this.area = area;
    //this.timezones = timezones;
    //this.borders = borders;
    this.nativeName = nativeName;
    this.numericCode = numericCode;
    this.flag = flag;   
    //this.cioc = cioc;
    this.independent = independent;
    this.flags = flags;
    //this.currencies = currencies;
  }
}