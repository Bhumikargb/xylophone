import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player=AudioPlayer();
    player.play('note$soundNumber.wav' as Source);
  }

  Expanded buildKey({Color? color=Colors.blue, int soundNumber=0}){
   return  Expanded(
      child: TextButton(

        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: (){
          playSound(soundNumber);
        },
        child: Text(
          '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red,soundNumber: 1),
              buildKey(color: Colors.orange,soundNumber: 2),
              buildKey(color: Colors.yellow,soundNumber: 3),
              buildKey(color: Colors.green,soundNumber: 4),
              buildKey(color: Colors.teal,soundNumber: 5),
              buildKey(color: Colors.blue,soundNumber: 6),
              buildKey(color: Colors.purple,soundNumber: 7),


            ],
          ),
        ),
      ),
    );
  }
}