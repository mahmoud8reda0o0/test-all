import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tesssssst/ui/Provider/provider_data.dart';

class Data2 extends StatelessWidget{

  String MyName ="Mahmoud";

  Widget build(BuildContext context){
          return Scaffold(
            body: Column(
              children: [
                Center(child: Text('${Provider.of<Provider_data>(context).games[Provider.of<Provider_data>(context).index]}'),),
                Text('${Provider.of<Provider_data>(context).name}'),
                TextButton(
                    onPressed: (){
                      Provider.of<Provider_data>(context,listen: false).name=MyName;
                    },
                    child: Text('${Provider.of<Provider_data>(context).name}'))
              ],
            ),
          );
        //   return Consumer<Provider_data>(
        //     builder: (context , provider_data , child){
        //       return Scaffold(
        //         body: Column(
        //           children: [
        //             Center(child: Text('${provider_data.games[provider_data.index]}'),),
        //             Text('${provider_data.name}'),
        //           ],
        //         ),
        //       );
        //     },
        // );

  }
}