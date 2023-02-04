// import 'package:flutter/material.dart';
// import 'package:tesssssst/ui/inherited/inherited_data.dart';
//
// class i_show_data extends StatelessWidget{
//   all_public all_two = new all_public();
//   Widget build (BuildContext context){
//     return  Scaffold(
//         appBar: AppBar(
//           title: Text('decrease counter'),
//         ),
//         body: StatefulBuilder(
//           builder: (BuildContext context , StateSetter setState){
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text('${all_two.counter}'),
//                 TextButton(
//                   onPressed: ()=>setState(()=>all_two.counter--),
//                   child: Text('decrease'),
//                 ),
//                 TextButton(
//                   onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>i_show_data())),
//                   child: Text('last page'),
//                 ),
//               ],
//             );
//           },
//         ),
//
//     );
//   }
// }