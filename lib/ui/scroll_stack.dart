import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StackScroll extends StatelessWidget{
  Widget build (BuildContext context){

    double _hright =MediaQuery.of(context).size.height;
    double _width  =MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
       child: Stack(
         children:[
           Container(

             width: _width,
             color: Colors.red,
             child: Image(image: AssetImage('asset/m1.png'),
                 fit:BoxFit.fitWidth
             ),
           ),
           Positioned(
             top: 100,
               //right: 300,
             left: 100,
             height: 100,
             width: 100,
               child: Container(
                 height: 100,
                 width: 100,
                 color: Colors.black,),
           ),
           Positioned(
             top: 700,
             right: 200,
             //left: 100,
             height: 100,
             width: 100,
             child: Container(
               height: 100,
               width: 100,
               color: Colors.black,),
           ),
           Positioned(
             top: 500,
             //right: 300,
             left: 300,
             height: 100,
             width: 100,
             child: Container(
               height: 100,
               width: 100,
               color: Colors.black,),
           ),
         ]
       )
      ),
    );
  }
}
// Stack(
// children:[
// Container(
// height: _hright*0.998,
// width: _width*0.998,
// child: Image(image: AssetImage('asset/m1.png'),
// fit: BoxFit.fitWidth,
// //width: MediaQuery.of(context).size.width*0.9,
// ),
// ),
// ]
// ),

// ListView(
// children: [
// Image(image: AssetImage('asset/m1.png'),
// fit: BoxFit.fitWidth,
// ),
// ],
// ),