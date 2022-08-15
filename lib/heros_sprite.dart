import 'package:bonfire/bonfire.dart';

class MarioSprite {
  static Future<SpriteAnimation> get idleLeft_1 => SpriteAnimation.load(
        'heros/1_hero16x24_idleft.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.25,
          textureSize: Vector2(16, 28),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get runLeft_1 => SpriteAnimation.load(
        'heros/1_hero16x24_idleft.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2(16, 28),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get idleRight_1 => SpriteAnimation.load(
        'heros/1_hero16x24_idridht.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.25,
          textureSize: Vector2(16, 28),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get runRight_1 => SpriteAnimation.load(
        'heros/1_hero16x24_idridht.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.25,
          textureSize: Vector2(16, 28),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get die => SpriteAnimation.load(
        'heros/1_hero16x24_die.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.5,
          textureSize: Vector2(16, 28),
          texturePosition: Vector2(0, 0),
        ),
      );
}
