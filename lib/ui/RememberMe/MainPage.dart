import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(

      body: MediaQuery.of(context).orientation== Orientation.portrait
          ?Center(
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage('asset/p2.png'),
              ),
            ),
            GestureDetector(
              onTap: ()=>Navigator.pushNamed(context, 'Info'),
              child: Container(
              ),
            ),
          ],
        ),
      )
      : Container()

    );
  }
}