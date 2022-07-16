import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone_App());
}

class Xylophone_App extends StatefulWidget {
  const Xylophone_App({Key? key}) : super(key: key);

  @override
  State<Xylophone_App> createState() => _Xylophone_AppState();
}

class _Xylophone_AppState extends State<Xylophone_App> {
  static AudioCache player = AudioCache();
  var audioColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.green.shade900,
    Colors.blue,
    Colors.purple
  ];
  Widget Btn_Play(int num) {
    return Flexible(
      child: Container(
        color: audioColors[num],
        child: TextButton(
          onPressed: () {
            player.play('note${num + 1}.wav');
          },
          child: Center(
            child: Text(
              ' ',
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Xylophone',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade400,
        ),
        body: Center(
          child: Column(
            children: [
              Btn_Play(0),
              Btn_Play(1),
              Btn_Play(2),
              Btn_Play(3),
              Btn_Play(4),
              Btn_Play(5),
              Btn_Play(6),
            ],
          ),
        ),
      ),
    );
  }
}
