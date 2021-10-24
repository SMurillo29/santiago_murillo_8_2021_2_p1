import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:santiago_murillo_8_2021_2_p1/models/countrie.dart';
import 'package:santiago_murillo_8_2021_2_p1/screen/detail.dart';
import './helpers/api_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Counries", home: Inicio());
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  ApiHelter _api = new ApiHelter();
  late Future<List<Countrie>> _countries;
    bool _haveInternet = true;
  Widget _body = Text("Revise su conexión a internet");

  @override
  void initState() {
    super.initState();
    _countries = _api.getCountries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(96, 151, 50, 25),
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
    );
  }

  List<Widget> _listCountries(data) {
    List<Widget> countries = [];
    for (var item in data) {
      countries.add(InkWell(
          child: Card(
            child: Column(
              children: [
               // Expanded(child: SvgPicture.network(item.flag)),
                Expanded(child: Image.network(item.flags.png)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item.name),
                )
              ],
            ),
            color: Color.fromRGBO(237, 237, 237, 25),
          ),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailCountie(countrie: item,)))));
    }
    return countries;
  }


    void _getCountries() async{
     var connectivityResult = await Connectivity().checkConnectivity();
         if (connectivityResult == ConnectivityResult.none) {   
           this._haveInternet = false;   

           

      return;
      }
       _countries = _api.getCountries();
       _body = FutureBuilder(
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
      
        );
  }
}
