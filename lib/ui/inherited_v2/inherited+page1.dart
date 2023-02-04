import 'package:flutter/material.dart';
import 'package:tesssssst/ui/inherited_v2/inherited_MainPage.dart';

class i_page1 extends StatelessWidget{
  Widget build(BuildContext context){
    final inherited_conter = context.dependOnInheritedWidgetOfExactType<inherited_MainPage>();
    //final inherited_conter = inherited_MainPage.of(context);
                                     // هستخدم ال context للصفحه اللي موجود فيها عشان هو الحامل المعلومه الاساسيه لكل القيم ف الصفحه دي
                                     // من خلاله اقدر اتعامل مع parent و child الموجوده ف Widget Tree
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("${inherited_conter!.counter}")),
        ],
      ),
    );
  }
}