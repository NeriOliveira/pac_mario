import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pac_mario/coin.dart';
import 'package:pac_mario/enemies_bot.dart';
import 'package:pac_mario/heros_player.dart';
import 'package:pac_mario/main.dart';
import 'package:pac_mario/mushroom.dart';
import 'package:pac_mario/my_game_controller.dart';
import 'package:pac_mario/player_interface.dart';

class Game extends StatefulWidget {
  final int stage;
  const Game({Key? key, this.stage = 1}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  List<GameComponent> enemies = [];
  @override
  void initState() {
    switch (widget.stage) {
      case 1:
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 12, tileSized * 19)));
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 12, tileSized * 7)));
        break;
      case 2:
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 12, tileSized * 19)));
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 6, tileSized * 6)));
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 26, tileSized * 12)));
        break;
      case 3:
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 12, tileSized * 19)));
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 6, tileSized * 6)));
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 26, tileSized * 12)));
        enemies
            .add(EnemyBot_1(position: Vector2(tileSized * 26, tileSized * 34)));
        break;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(color: Colors.red, size: 180),
      ),
      map: TiledWorldMap('maps/map1.json',
          forceTileSize: const Size(tileSized, tileSized),
          objectsBuilder: {
            'coin': ((properties) => Coin(properties.position)),
            'mushroom': ((properties) => Mushroom(properties.position)),
          }),
      player: MarioPlayer(),
      overlayBuilderMap: {
        PlayerInterface.overlayKey: (context, game) => PlayerInterface(
              game: game,
            )
      },
      initialActiveOverlays: const [
        PlayerInterface.overlayKey,
      ],
      components: [
        MyGameController(widget.stage),
        ...enemies,
      ],
      cameraConfig: CameraConfig(
        smoothCameraSpeed: 0,
        sizeMovementWindow: Vector2(0, 0),
        smoothCameraEnabled: true,
        //moveOnlyMapArea: true,
        zoom: 0.9,
      ),
      //showCollisionArea: true,
    );
  }
}
