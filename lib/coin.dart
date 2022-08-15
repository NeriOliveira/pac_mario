import 'package:bonfire/bonfire.dart';
import 'package:pac_mario/decorations_sprite.dart';
import 'package:pac_mario/heros_player.dart';
import 'package:pac_mario/main.dart';
import 'package:flame/sprite.dart';

class Coin extends GameDecoration with Sensor {
  Coin(Vector2 position)
      : super.withSprite(
            sprite: DecorationSpriteSheet.coin,
            position: position,
            size: Vector2(16, 16)) {}

  @override
  void onContact(GameComponent component) {
    if (component is MarioPlayer) {
      score++;
      resultado += score;
      removeFromParent();
      print('$score');
    }
  }
}
