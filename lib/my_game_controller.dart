import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pac_mario/game.dart';
import 'package:pac_mario/home.dart';
import 'package:pac_mario/main.dart';

class MyGameController extends GameComponent {
  bool endGame = false;
  bool gameOver = false;
  final int stage;

  MyGameController(this.stage);

  @override
  void update(double dt) {
    if (checkInterval("end game", 500, dt)) {
      if (score >= 40 && !endGame) {
        endGame = true;
        score = 0;
        if (stage == 3) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text('Parabéns você venceu todos os níveis'),
                actions: [
                  TextButton(
                    onPressed: () {
                      _goHome();
                    },
                    child: Text('Ir para o início'),
                  )
                ],
              );
            },
          );
        } else {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text('Nível concluído. Parabéns!'),
                actions: [
                  TextButton(
                    onPressed: () {
                      _goStage(stage + 1);
                    },
                    child: Text('Próximo'),
                  )
                ],
              );
            },
          );
        }
      }
    }

    if (checkInterval('gameover', 500, dt)) {
      if (gameRef.player?.isDead == true && !gameOver) {
        gameOver = true;
        score = 0;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('GAME OVER'),
              actions: [
                TextButton(
                  onPressed: () {
                    _goStage(stage);
                  },
                  child: Text('Tentar novamente'),
                ),
                TextButton(
                  onPressed: () {
                    _goHome();
                  },
                  child: Text('Ir para o início'),
                )
              ],
            );
          },
        );
      }
    }

    super.update(dt);
  }

  void _goStage(int newStage) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) {
        return Game(
          stage: newStage,
        );
      }),
      (route) => false,
    );
  }

  void _goHome() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) {
        return const HomePage(
          title: 'Pac-Mario Game',
        );
      }),
      (route) => false,
    );
  }
}
