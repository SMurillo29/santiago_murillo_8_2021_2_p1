import 'package:flutter/material.dart';
import 'package:santiago_murillo_8_2021_2_p1/models/countrie.dart';
import './helpers/api_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ApiHelter _api = new ApiHelter();
  late Future<List<Countrie>> _countries;

  @override
  void initState() {
    super.initState();
    _countries = _api.getCountries();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Countries'),
        ),
        body: FutureBuilder(
          future: _countries,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              return GridView.count(
                crossAxisCount: 2,
                children: _listCountries(snapshot.data),
              );
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Text("Error");
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _listCountries(data) {
    List<Widget> countries = [];
    for (var item in data) {
      countries.add(Card(
          child: Column(
        children: [          
          Expanded(child: SvgPicture.network(item.flag)),      
             
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(item.name),
          )
        ],
      )));
    }
    return countries;
  }
}
