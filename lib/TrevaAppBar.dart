import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';


class TrevaAppbar extends StatelessWidget{
  List<Color> colorList=[Color(0xFF3384FC), Color(0xFF00C6FF)];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorList,
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
          tileMode: TileMode.clamp

        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon:Icon(Icons.menu, color: Colors.white,), onPressed: (){},),
          Text("treva", style:const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36.0
          ),),
          IconButton(icon:Icon(Icons.search, color: Colors.white,), onPressed: (){},),
        ],
      ),
    );
  }
}