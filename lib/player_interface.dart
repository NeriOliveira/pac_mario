import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'dart:async' as async;

import 'package:pac_mario/main.dart';

class PlayerInterface extends StatefulWidget {
  static const overlayKey = 'playerInterface';

  final BonfireGame game;
  const PlayerInterface({Key? key, required this.game}) : super(key: key);

  @override
  _PlayerInterfaceState createState() => _PlayerInterfaceState();
}

class _PlayerInterfaceState extends State<PlayerInterface> {
  int resultado = score;
  double life = 0;

  final double widthMax = 100;
  double widthCurrent = 100;

  late async.Timer _scoreTime;
  @override
  void initState() {
    _scoreTime = async.Timer.periodic(
      const Duration(milliseconds: 100),
      _verifyScore,
    );
    super.initState();
  }

  @override
  void dispose() {
    _scoreTime.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: widthCurrent,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: widthMax,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _verifyScore(async.Timer timer) {
    if (score != (resultado == 40)) {
      setState(() {
        score == 40;

        final percent = score / 40;
        widthCurrent = widthMax * percent;
      });
    }
  }
}
