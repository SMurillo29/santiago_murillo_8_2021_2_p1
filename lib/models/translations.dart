class Translations {
  late String br;
  late String pt;
  late String nl;
  late String hr;
  late String fa;
  late String de;
  late String es;
  late String fr;
  late String ja;
  late String it;
  late String hu;

  Translations( 
  String br,
  String pt,
  String nl,
  String hr,
  String fa,
  String de,
  String es,
  String fr,
  String ja,
  String it,
  String hu,){
    this.br = br;
    this.pt = pt;
    this.nl = nl;
    this.hr = hr;
    this.fa = fa;
    this.de = de;
    this.es = es;
    this.fr = fr;
    this.ja = ja;
    this.it = it;
    this.hu = hu;
  }

  Translations.fromJson(Map<String, dynamic> json) {
    br = json['br'];
    pt = json['pt'];
    nl = json['nl'];
    hr = json['hr'];
    fa = json['fa'];
    de = json['de'];
    es = json['es'];
    fr = json['fr'];
    ja = json['ja'];
    it = json['it'];
    hu = json['hu'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['br'] = this.br;
    data['pt'] = this.pt;
    data['nl'] = this.nl;
    data['hr'] = this.hr;
    data['fa'] = this.fa;
    data['de'] = this.de;
    data['es'] = this.es;
    data['fr'] = this.fr;
    data['ja'] = this.ja;
    data['it'] = this.it;
    data['hu'] = this.hu;
    return data;
  }
}