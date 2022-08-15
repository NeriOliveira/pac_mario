import 'package:bonfire/bonfire.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pac_mario/enemies_bot.dart';
import 'package:pac_mario/game.dart';
import 'package:pac_mario/heros_sprite.dart';
import 'package:pac_mario/home.dart';
import 'dart:ui';

const double tileSized = 16;
int score = 0;
double resultado = 0;

void main() async {
  BonfireInjector.instance.put((i) => EnemiesGeneratorController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pac-Mario',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //home: const HomePage(title: 'Pac-Mario Game'),
      routes: {
        "/": (context) => const HomePage(title: 'Pac-Mario Game'),
        "game": (context) => const Game(),
      },
    );
  }
}
