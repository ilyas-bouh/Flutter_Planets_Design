import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meteo/PlanetCard.dart';
import 'TrevaAppBar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planet Booking',
      home: Scaffold(


        body: Column(
          children: <Widget>[
            TrevaAppbar(),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Color(0xFF3E3963),
                child: PlanetCards(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlanetCards extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 15.0),
          children: <Widget>[
            PlanetCard(0),
            PlanetCard(1),
            PlanetCard(2),
            PlanetCard(3),
            PlanetCard(4),
          ],
    );
  }
}


