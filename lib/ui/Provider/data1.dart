import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tesssssst/ui/Provider/data2.dart';
import 'package:tesssssst/ui/Provider/provider_data.dart';


class Date1 extends StatefulWidget{
  State<StatefulWidget> createState()=> Data1_s();
}
class Data1_s extends State<Date1>{

  TextEditingController controller_name = TextEditingController();
  Widget build(BuildContext context){
    //controller_name = Provider.of<Provider_data>(context).name;
    return  Consumer<Provider_data>(
      builder: (context , provider_data , child){
        return Scaffold(
            body: Column(
              children: [
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.black,
                  child: ListView.builder(
                      itemCount: provider_data.games.length,
                      itemBuilder: (context,int index)
                      {
                        return  GestureDetector(
                          onTap: (){
                            setState((){
                              provider_data.index = index;
                              provider_data.name = controller_name.text;
                            });
                            print('${Provider.of<Provider_data>(context,listen : false).index}');   // listen : false <IMPORTANT>
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Data2()));
                          },

                          child: ListTile(
                            title: Text('${provider_data.games[index]}'),
                          ),
                        );
                      }
                  ),
                ),
                TextField(
                  controller: controller_name,
                  decoration: InputDecoration(
                      hintText: 'enter your name'
                  ),
                )
              ],
            )
        );
      },
      // child: Scaffold(
      //   body: Column(
      //     children: [
      //       Container(
      //         height: 350,
      //         width: MediaQuery.of(context).size.width,
      //        // color: Colors.black,
      //         child: ListView.builder(
      //               itemCount: Provider.of<Provider_data>(context).games.length,
      //                 itemBuilder: (context,int index)
      //             {
      //               return  GestureDetector(
      //                     onTap: (){
      //                       setState((){
      //                         Provider.of<Provider_data>(context,listen: false).index = index;
      //                         Provider.of<Provider_data>(context,listen: false).name = controller_name.text;
      //                       });
      //                       print('${Provider.of<Provider_data>(context,listen : false).index}');
      //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Data2()));
      //                     },
      //
      //                 child: ListTile(
      //                   title: Text('${Provider.of<Provider_data>(context,listen : false).games[index]}'),
      //                 ),
      //               );
      //             }
      //         ),
      //       ),
      //       TextField(
      //         controller: controller_name,
      //         decoration: InputDecoration(
      //           hintText: 'enter your name'
      //         ),
      //       )
      //     ],
      //   )
      // ),
    );
    // return Consumer<Provider_data>(
    //   builder: (context, provider_data , child)
    //   {
    //     return Scaffold(
    //       body: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           TextField(
    //             controller: controller_name,
    //             decoration: InputDecoration(
    //               hintText: 'enter your name',
    //             ),
    //           ),
    //           TextButton(
    //             onPressed: (){
    //               provider_data.name = controller_name.text;
    //               //Navigator.push(context,MaterialPageRoute(builder: (context)=>Data2()));
    //               print('${provider_data.name}');
    //             },
    //             child: Text('Save'),
    //           ),
    //           button('navigate',context),
    //           // TextButton(
    //           //   onPressed: (){
    //           //     //provider_data.name = controller_name.text;
    //           //     Navigator.push(context,MaterialPageRoute(builder: (context)=>Data2()));
    //           //     print('${provider_data.name}');
    //           //   },
    //           //   child: Text('navigate'),
    //           // ),
    //         ],
    //       ),
    //     );
    //     },
    // );
  }
}

class button extends StatelessWidget{
  var button_name ;
  BuildContext context;
  button(this.button_name,this.context);
  Widget build(BuildContext context){
    return TextButton(
      onPressed: (){
        //provider_data.name = controller_name.text;
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Data2()));
        print('${Provider.of<Provider_data>(context).name}');
      },
      child: Text('navigate'),
    );
  }
}