import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tesssssst/ui/bloc_screen/bloc_state.dart';

class BlocCubit extends Cubit<BlocState>{
  BlocCubit():super(CounterInit());

  static BlocCubit get (BuildContext context){
    return BlocProvider.of(context);
  }

  int num =0;

  void increaseNum(){
    num++;
    emit(CounterInc());
  }
  void decreaseNum(){
    num--;
    emit(CounterDec());
  }

}