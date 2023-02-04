// import 'package:flutter/material.dart';
//
// class inherited_data extends InheritedWidget{
//    late final int count;
//   late final Widget child;
//   inherited_data({
//      Key? key ,
//      this.count=0,
//     required this.child,
//     }) : super(key: key , child: child);
//
//   static inherited_data? of(BuildContext context){
//     return (context.dependOnInheritedWidgetOfExactType<inherited_data>());
//   }
//
//
//   @override
//   bool updateShouldNotify( inherited_data oldWidget) {
//     return oldWidget.count!=count ;
//   }
// }
