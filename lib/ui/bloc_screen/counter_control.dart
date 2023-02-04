import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tesssssst/ui/bloc_screen/bloc_cubit.dart';
import 'bloc_state.dart';
class CounterControl extends StatelessWidget{
  Widget build(BuildContext context){
    return BlocProvider(
      create: (BuildContext context)=>BlocCubit(),
      child: BlocConsumer<BlocCubit,BlocState>(
        listener:(BuildContext context,state){},
        builder: (BuildContext context,state){
          var cubit = BlocCubit.get(context);
          return Scaffold(
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 20,),
                  IconButton(onPressed: (){cubit.increaseNum();}, icon: Icon(Icons.arrow_upward)),
                  Text('${cubit.num}',style: TextStyle(fontSize: 70),),
                  IconButton(onPressed: (){cubit.decreaseNum();}, icon: Icon(Icons.arrow_downward)),
                  SizedBox(width: 20,),
                ],
              ),
            ),
          );
        },

      ),


    );

  }
}