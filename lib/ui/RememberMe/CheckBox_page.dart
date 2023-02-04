import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tesssssst/ui/RememberMe/MainPage.dart';
 class CheckPage extends StatefulWidget{
   State<StatefulWidget> createState()=>CheckPage_s();
 }

 class CheckPage_s extends State<CheckPage>{

   bool check_box=false;
   String shared_key='remember';
   bool? shared_value;

   shared_setdata(bool data) async{
     SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setBool(shared_key,data);
   }
   share_getdata()async{
     SharedPreferences pref = await SharedPreferences.getInstance();
     shared_value = pref.getBool(shared_key);
     setState((){});
   }

   shared_navigate()async{
     SharedPreferences pref=await SharedPreferences.getInstance();
     if(shared_value==true){
       Navigator.pushNamed(context, 'MainPage');
     }
   }
   @override
   void initState(){
     super.initState();
     print("initState Started");
     share_getdata();
     shared_navigate();
   }


   Widget build(BuildContext context){
     return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Checkbox(
               value: check_box,
               onChanged: (bool? value){
                 setState(()=>check_box=value!);
               }),
           Center(
             child: TextButton(
               onPressed: (){
                 shared_setdata(check_box);
               },
               child: Text('setdate '),
             ),
           ),
           Text('checkbox=> ${check_box}'),
           Text('shared => ${shared_value}'),
           TextButton(onPressed: (){
             if(shared_value==true){
               Navigator.pushNamed(context, "MainPage");
             }
             else
               print('shared_value = false');
           }, child: Text('Navigate'))
         ],
       ),
     );
   }
 }