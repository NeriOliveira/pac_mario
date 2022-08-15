import 'package:bonfire/bonfire.dart';
import 'package:pac_mario/decorations_sprite.dart';
import 'package:pac_mario/heros_player.dart';
import 'package:pac_mario/main.dart';
import 'package:flame/sprite.dart';

class Mushroom extends GameDecoration with Sensor {
  Mushroom(Vector2 position)
      : super.withSprite(
            sprite: DecorationSpriteSheet.mushroom,
            position: position,
            size: Vector2(12, 12)) {}

  @override
  void onContact(GameComponent component) {
    if (component is MarioPlayer) {}

    removeFromParent();
  }
}
