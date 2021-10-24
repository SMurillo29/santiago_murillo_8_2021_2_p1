import 'package:flutter/material.dart';
import '../models/countrie.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailCountie extends StatelessWidget {

  final Countrie countrie;
  const DetailCountie({Key? key, required this.countrie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(96, 151, 50, 25),
        title: Text(countrie.name),
      ),body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child:  Image.network(countrie.flags.png),
            ),
          
              Row(
              children: [
                    Expanded(child: Text('Name', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.name, textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
            Row(
              children: [
                    Expanded(child: Text('alpha2Code', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.alpha2Code, textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
                          Row(
              children: [
                    Expanded(child: Text('alpha3Code', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.alpha3Code, textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
                          Row(
              children: [
                    Expanded(child: Text('subregion', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.subregion, textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
                          Row(
              children: [
                    Expanded(child: Text('region', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.region, textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
                          Row(
              children: [
                    Expanded(child: Text('population', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.population.toString(), textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
                          Row(
              children: [
                    Expanded(child: Text('demonym', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.demonym, textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
                          Row(
              children: [
                    Expanded(child: Text('nativeName', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.nativeName, textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
                          Row(
              children: [
                    Expanded(child: Text('numericCode', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.numericCode, textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
                          Row(
              children: [
                    Expanded(child: Text('independent', textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20))),
                    Expanded(child: Text(countrie.independent.toString(), textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 15))),
              ],
            ),
          

        ],
      ),
    );
  }
}

