import 'package:bonfire/bonfire.dart';
import 'package:pac_mario/enemies_sprite.dart';
import 'package:pac_mario/main.dart';
import 'dart:ui';

class EnemyBot_1 extends SimpleEnemy
    with
        ObjectCollision,
        UseStateController<EnemiesGeneratorController>,
        AutomaticRandomMovement {
  bool canMove = true;
  bool playerIsClose = false;
  EnemyBot_1({required Vector2 position})
      : super(
            position: position,
            size: Vector2(
              16,
              28,
            ),
            speed: 85,
            animation: SimpleDirectionAnimation(
              idleRight: EnemySprite_1_1.idleRight_1,
              runRight: EnemySprite_1_1.runRight_1,
              idleLeft: EnemySprite_1_1.idleLeft_1,
              runLeft: EnemySprite_1_1.runLeft_1,
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
  void render(Canvas canvas) {
    drawDefaultLifeBar(canvas);
    super.render(canvas);
  }

  @override
  void Come() {
    this.seeComponentType<EnemyBot_1>(
      observed: (Enemy) {
        if (!playerIsClose) {
          playerIsClose = true;
          if (playerIsClose = true) {
            die();
            canMove = false;
          }
        }
      },
      radiusVision: 10,
    );
  }

  @override
  void update(double dt) {
    Come();

    seePlayer(
        observed: (player) {
          seeAndMoveToPlayer(
            closePlayer: (player) {
              /*simpleAttackMelee(
                  damage: 100,
                  size: Vector2(tileSized * 0.8, tileSized * 0.8),
                  interval: 10);*/
            },
            radiusVision: tileSized * 10,
            margin: 0,
            runOnlyVisibleInScreen: true,
          );
        },
        notObserved: () {
          runRandomMovement(
            dt,
            speed: 50,
            timeKeepStopped: 0,
            maxDistance: 200,
            minDistance: 0,
            runOnlyVisibleInCamera: true,
          );
        },
        radiusVision: tileSized * 10);

    super.update(dt);
  }

  @override
  void die() {
    controller.respaw(position);
    removeFromParent();
    super.die();
  }
}

class EnemiesGeneratorController extends StateController<EnemyBot_1> {
  final _positionsToRespawn = [
    Vector2(tileSized * 13, tileSized * 20),
    Vector2(tileSized * 14, tileSized * 20)
  ];

  void respaw(Vector2 position) {
    final hasGameRef = component?.hasGameRef ?? false;
    if (hasGameRef && !gameRef.camera.isMoving) {
      final enemyBot_1 = EnemyBot_1(position: position);
      gameRef.add(enemyBot_1);
    }
  }

  @override
  void update(double dt, EnemyBot_1 component) {}
}
