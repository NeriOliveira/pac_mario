import 'package:bonfire/bonfire.dart';

class DecorationSpriteSheet {
  static Future<Sprite> get coin => Sprite.load('decorations/coin.png',
      srcPosition: Vector2(0, 0), srcSize: Vector2(16, 16));

  static Future<Sprite> get mushroom => Sprite.load('decorations/mushroom.png',
      srcPosition: Vector2(0, 0), srcSize: Vector2(16, 16));
}
