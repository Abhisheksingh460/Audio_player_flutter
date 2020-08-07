import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);

bool play;
bool stop;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/appbg.jpg"), fit: BoxFit.cover),
                color: Colors.lightGreen),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 350,
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.financialexpress.com/2020/06/dil-bechara-660.jpg"),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: 250,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.play_circle_filled),
                                  iconSize: 50,
                                  color: Colors.blueGrey,
                                  onPressed: () {
                                    audio.play('DilBechara.mp3');
                                  }),
                              IconButton(
                                  icon: Icon(Icons.pause_circle_filled),
                                  iconSize: 50,
                                  color: Colors.blueGrey,
                                  onPressed: () {
                                    newPlayer.pause();
                                  }),
                              IconButton(
                                  icon: Icon(Icons.stop),
                                  iconSize: 50,
                                  color: Colors.blueGrey,
                                  onPressed: () {
                                    newPlayer.stop();
                                  }),
                            ],
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
