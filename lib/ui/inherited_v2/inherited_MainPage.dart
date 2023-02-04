import 'package:flutter/material.dart';

               //  عملت StatefulWidget عشان لخزن فيها التغير اللي بيحصل ف الداتا ويكون ال child -> س inherited Widget
               // لان inherited Widget القيم اللي فيها immutable بتتخزن مره واحده مش بقدر اغيرها بعدين
               //
class stateFull_MainPage extends StatefulWidget{
  late final Widget child ;

  State<StatefulWidget> createState()=> stateFull_MainPage_s();
}
class stateFull_MainPage_s extends State<stateFull_MainPage>
{
  var counter =0;
  Widget build(BuildContext context) {
    return inherited_MainPage(
        child: widget.child,   //ال widgets اللي هتبقي تحت ال inherited بدايه من MaterialApp
        counter: counter       //كتب كل ال variable من نوع var عشان يحصل عليهم تغير  
    );
  }
}


class inherited_MainPage extends InheritedWidget{
  int counter =0;
  inherited_MainPage({Key? key , required super.child,required this.counter}):super (key: key);
  //inherited_MainPage({super.key , required super.child,required this.conter});

  static of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<inherited_MainPage>();
  //  ممكن استدعيها مباشره ف ال Child هاخد منه مكانه context ع

  @override
  bool updateShouldNotify(inherited_MainPage oldWidget) => oldWidget.counter!=counter;
}