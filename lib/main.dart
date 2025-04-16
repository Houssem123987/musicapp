import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main() {
  runApp(MusicWidget());
}
class MusicWidget extends StatefulWidget {
  const MusicWidget({super.key});

  @override
  State<MusicWidget> createState() => _MusicWidgetState();
}

class _MusicWidgetState extends State<MusicWidget> {

  void playMusic(int musicNumber){
    final player =AudioPlayer();
    player.play(AssetSource('music-$musicNumber.mp3'));

  }

  Expanded myButton({required int musicNumber, required Color buttonColor , required String buttonText}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playMusic(musicNumber);

        },
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Icon(
                Icons.music_note,
                color: buttonColor,
              ),
              SizedBox(
                width: 20.0,
              ),

              Text(
                buttonText,
                style: TextStyle(
                  color: buttonColor,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text(
            "نغمات",
            style: TextStyle(
              color: Colors.purple,
              fontFamily: 'Cairo',



            ),
          ),

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(musicNumber: 1, buttonColor: Colors.red, buttonText: 'SAMSUNG GALAXY'),
            myButton(musicNumber: 2, buttonColor: Colors.green, buttonText: 'SAMSUNG NOTE'),
            myButton(musicNumber: 3, buttonColor: Colors.black, buttonText: 'NOKIA'),
            myButton(musicNumber: 4, buttonColor: Colors.orange, buttonText: 'iphone11'),
            myButton(musicNumber: 5, buttonColor: Colors.blue, buttonText: 'Whatsapp'),
            myButton(musicNumber: 6, buttonColor: Colors.purple, buttonText: 'Samsung s7'),
            myButton(musicNumber: 7, buttonColor: Colors.black, buttonText: 'iphone 56'),

          ],


        ),
      ),
    );
  }
}


