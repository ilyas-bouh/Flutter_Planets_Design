import 'package:flutter/material.dart';
import 'package:meteo/Planet.dart';
import 'package:meteo/Seperator.dart';


class PlanetCard extends StatelessWidget {

  final int index;

  final Planets = [
    Planet("Mars", "Milkway", "images/mars.png", 54.6, 3.711),
    Planet("Moon", "Milkway", "images/moon.png", 36.9, 0.9),
    Planet("Neptune", "Milkway", "images/neptune.png", 638.6, 2.34),
    Planet("Mercury", "Milkway", "images/mercury.png", 993.912, 9.25),
    Planet("Earth", "Milkway", "images/earth.png", 0.00, 1.00),
  ];

  PlanetCard(this.index);

  @override
  Widget build(BuildContext context) {
    return Stack(

      alignment: Alignment.centerLeft,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              right: 35.0, left: 35.0, bottom: 0.0, top: 20.0),
          width: double.infinity,
          height: 120.0,
        ),
//        Image.asset("images/b.png", fit: BoxFit.cover,),


        Container(
          width: double.infinity,
          height: 120,
          //color: Colors.greenAccent,
          margin: EdgeInsets.only(left: 75.0, right: 35.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Color(0xFF434273),
          ),
          child: Container(
            margin: EdgeInsets.only(
                left: 45.0, right: 0.0, top: 10.0, bottom: 10.0),
            //color: Colors.blue,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(

                  children: <Widget>[

                    Expanded(
                      child: Container(
                        height: 26.0,
                        padding: EdgeInsets.only(top: 0.0),
                        //color: Colors.red,
                        child: Text(Planets[index].name,
                          style: TextStyle(
                            fontSize: 28.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                    Container(
                      height: 26,
                      padding: EdgeInsets.all(0.0),
                      //color:Colors.pinkAccent,
                      child: IconButton(padding: EdgeInsets.all(0.0),
                        icon: Icon(
                          Icons.more_vert, color: Color(0xFF7973A6), size: 20,),
                        onPressed: () {},),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 0.0),
                  //color: Colors.red,
                  margin: EdgeInsets.only(left: 0.0),
                  child: Text(Planets[index].galaxy,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF9691B9),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Poppins"

                    ),),
                ),
                Seperator(),

                Container(
                  //color: Colors.amber,
//            color: Colors.red,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[

                      Container(width: 20.0, height: 12, child: IconButton(
                        padding: EdgeInsets.all(0.0),
                        icon: Image.asset("images/distance.png", width: 10,),
                        color: Colors.blue,)),
                      Expanded(child: Text(
                        "${Planets[index].distance_to_earth} km",
                        style: TextStyle(
                            color: Color(0xFF7973A6,), fontSize: 12.0),)),

                      SizedBox(width: 0.0, height: 44.0,),

                      Container(width: 20.0, height: 12, child: IconButton(
                        padding: EdgeInsets.all(0.0),
                        icon: Image.asset("images/gravity.png", width: 10,),
                        color: Colors.blue,)),
                      Expanded(child: Text("${Planets[index].gravity} m/s",
                        style: TextStyle(
                            color: Color(0xFF7973A6,), fontSize: 12.0),)),


                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        Container(
          width: 72,
          height: 72,
          //color: Colors.black87,
          margin: EdgeInsets.only(left: 35.0),
          child: Image.asset(Planets[index].image, fit: BoxFit.contain,),
          decoration: BoxDecoration(
//            color: Colors.white,
            borderRadius: BorderRadius.circular(36.0),
          ),
        ),
      ],
    );
  }
}