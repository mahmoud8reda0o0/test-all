// import 'package:flutter/material.dart';
//
// class hero1 extends StatelessWidget{
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       body:  GridView.builder(
//         itemCount: 10,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           itemBuilder: (context,index)
//       {
//         return Container(
//           color: Colors.green,
//           height: 300,
//           width: 300,
//           child: GestureDetector(
//             onTap: () =>
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => hero2())),
//             child: Hero(
//                 tag: 'pokemon',
//                 child: Image.asset("asset/p2.png")),
//           ),
//         );
//       })
//     );
//   }
// }
//
//
//
// class hero2 extends StatefulWidget{
//   State<StatefulWidget> createState()=>hero2_s();
// }
// class hero2_s extends State<hero2>
// {
//
//   items: list.map<DropdownMenuItem<String>>((String value) {
//   return DropdownMenuItem<String>(
//   value: value,
//   child: Text(value),
//   );
//   }).toList(),
//   List<String> list =['s','q','g','t','p'];
//   String dropdownValue = list.first;
//   Widget build(BuildContext context){
//    // List Games = ['elden ring','Raknarog' , 'Stray', 'Mortal Kombat'];
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drop Down Buttom'),
//         actions: [
//         DropdownButton<String>(
//         value: dropdownValue,
//         icon: const Icon(Icons.arrow_downward),
//         elevation: 16,
//         style: const TextStyle(color: Colors.deepPurple),
//         underline: Container(
//           height: 2,
//           color: Colors.deepPurpleAccent,
//         ),
//         onChanged: (String? value) {
//           // This is called when the user selects an item.
//           setState(() {
//             dropdownValue = value!;
//           });
//         },
//         items: list.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//       ),
//         ],
//       ),
//       body: Center(
//         child: Container(
//           height: 300,
//           width: 300,
//           child: GestureDetector(
//             onTap: ()=>Navigator.pop(context),
//             child: Hero(
//                 tag: 'pokemon',
//                 child:Image.asset("asset/p2.png")),
//           ) ,
//         ),
//       ),
//     );
//   }
// }
//
// // class hero2 extends StatelessWidget {
// //   List<String> Games = ['elden ring','Raknarog' , 'Stray', 'Mortal Kombat'],
// //   Widget build (BuildContext context)
// //   {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Drop Down Buttom'),
// //         actions: [
// //           DropdownButton(
// //               items: Games.map((game){
// //                 return DropdownMenuItem(
// //                     child: Text('${game}'));
// //               }).toList(),
// //               onChanged: (String? selected_value){
// //                 setState((){
// //
// //                 })
// //               }),
// //         ],
// //       ),
// //       body: Center(
// //         child: Container(
// //           height: 300,
// //           width: 300,
// //           child: GestureDetector(
// //             onTap: ()=>Navigator.pop(context),
// //             child: Hero(
// //               tag: 'pokemon',
// //               child:Image.asset("asset/p2.png")),
// //           ) ,
// //           ),
// //         ),
// //       );
// //
// //   }
// // }