import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pac_mario/enemies_bot.dart';
import 'package:pac_mario/game.dart';
import 'package:pac_mario/heros_sprite.dart';
import 'package:pac_mario/home.dart';
import 'package:pac_mario/main.dart';

class MarioPlayer extends SimplePlayer with ObjectCollision {
  bool canMove = true;
  bool enemyIsClose = false;
  MarioPlayer()
      : super(
            position: Vector2(
              tileSized * 13.2,
              tileSized * 28.1,
            ),
            size: Vector2(
              16,
              28,
            ),
            animation: SimpleDirectionAnimation(
              idleRight: MarioSprite.idleRight_1,
              runRight: MarioSprite.runRight_1,
              idleLeft: MarioSprite.idleLeft_1,
              runLeft: MarioSprite.runLeft_1,
            )) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(12, 12),
            align: Vector2(-1, 10),
          ),
        ],
      ),
    );
  }

  @override
  void update(double dt) {
    this.seeComponentType<EnemyBot_1>(
      observed: (Enemy) {
        if (!enemyIsClose) {
          enemyIsClose = true;
          if (enemyIsClose = true) {
            die();
            canMove = false;
          }
        }
      },
      radiusVision: 15,
    );
    if (canMove = true) {
      super.update(dt);
    }
  }

  @override
  void render(Canvas canvas) {
    drawDefaultLifeBar(canvas);
    super.render(canvas);
  }

  @override
  void die() async {
    animation?.playOnce(MarioSprite.die, runToTheEnd: true, onFinish: () {
      removeFromParent();
      _showDialog();
    });
    super.die();
  }

  void restart() {
    gameRef.player?.initialLife(100);
    Navigator.restorablePushReplacementNamed(context, 'game');
  }

  void _showDialog() {
    print('GAME OVER');
    //if (isDead) return restart();
  }
}
