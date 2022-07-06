import 'package:flutter/material.dart';
import 'package:simpletone/ui/player_ui.dart';
import 'package:simpletone/ui/playlist_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {
        "playlist" : (context) => const PlayList(),
        "player" : (context) => const PlayerUI()
      },
      initialRoute: "player",

    );
  }
}

