class Flags {
  String svg = '';
  String png = '';

  Flags(String svg,String png){
    this.svg = svg ;
    this.png = png;
  }

  Flags.fromJson(Map<String, dynamic> json) {
    svg = json['svg'];
    png = json['png'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['svg'] = this.svg;
    data['png'] = this.png;
    return data;
  }
}
