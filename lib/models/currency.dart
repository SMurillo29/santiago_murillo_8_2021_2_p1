class Currencie {
  late String code;
  late String name;
  late String symbol;

  Currencie(  String code,  String name,  String symbol){
    this.code = code;
    this.name = name;
    this.symbol = symbol;
  }

  Currencie.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    return data;
  }
}