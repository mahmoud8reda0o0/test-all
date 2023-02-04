import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Audio extends StatefulWidget{
  State<StatefulWidget>createState()=>Audio_s();
}
class Audio_s extends State<Audio>{
  final _audiolplayer= AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool is_played=false;
  int slider_value=0;


  @override
  void initState(){
    super.initState();
    _audiolplayer.onPlayerStateChanged.listen((state) {
      setState((){
        is_played = state == PlayerState.playing;
      });
    });

    _audiolplayer.onDurationChanged.listen((newDuration) {
      setState((){
        duration = newDuration ;
      });
    });

    _audiolplayer.onPositionChanged.listen((newPosition) {
      position=newPosition;
    });

  }
  Widget build(BuildContext){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.yellow,
            child: Text('${slider_value}',textAlign: TextAlign.center,style: TextStyle(fontSize: 50),),
          ),
          Slider(
              value: position.inSeconds.toDouble(),
              min: 0,
              max: duration.inSeconds.toDouble()  ,
              onChanged: (value)async{
                  final position = Duration(seconds: value.toInt());
                  await _audiolplayer.seek(position);
                  await _audiolplayer.resume();
                // setState((){
                //   slider_value=value.toInt();
                // });
              }
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text(format),
          //   ],
          //)
          IconButton(
              onPressed: (){
                AudioCache playAudio=AudioCache();
                //_audiolplayer.play(AssetSource('asset/Audio/a1.mp3'));
                playAudio.load('asset/Audio/a1.mp3');

              }, icon: Icon(Icons.play_arrow))
        ],
      ),


    );
  }
}