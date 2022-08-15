import 'package:bonfire/bonfire.dart';

class EnemySprite_1_1{

  static Future<SpriteAnimation> get idleLeft_1 => SpriteAnimation.load(
    'enemies/1_enemy_left.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.25,
      textureSize: Vector2(16,28),
      texturePosition: Vector2(0,0),
    ),
  );

  static Future<SpriteAnimation> get runLeft_1 => SpriteAnimation.load(
    'enemies/1_enemy_left.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.25,
      textureSize: Vector2(16,28),
      texturePosition: Vector2(0,0),
    ),
  );
  static Future<SpriteAnimation> get idleRight_1 => SpriteAnimation.load(
    'enemies/1_enemy_right.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.25,
      textureSize: Vector2(16,28),
      texturePosition: Vector2(0,0),
    ),
  );
  static Future<SpriteAnimation> get runRight_1 => SpriteAnimation.load(
    'enemies/1_enemy_right.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.25,
      textureSize: Vector2(16,28),
      texturePosition: Vector2(0,0),
    ),
  );
}

class EnemySprite_2_1{

  static Future<SpriteAnimation> get idleLeft_2 => SpriteAnimation.load(
    'enemies/2_enemy_left.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.25,
      textureSize: Vector2(16,28),
      texturePosition: Vector2(0,0),
    ),
  );

  static Future<SpriteAnimation> get runLeft_2 => SpriteAnimation.load(
    'enemies/2_enemy_left.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.25,
      textureSize: Vector2(16,28),
      texturePosition: Vector2(0,0),
    ),
  );
  static Future<SpriteAnimation> get idleRight_2 => SpriteAnimation.load(
    'enemies/2_enemy_right.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.25,
      textureSize: Vector2(16,28),
      texturePosition: Vector2(0,0),
    ),
  );
  static Future<SpriteAnimation> get runRight_2 => SpriteAnimation.load(
    'enemies/2_enemy_right.png',
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.25,
      textureSize: Vector2(16,28),
      texturePosition: Vector2(0,0),
    ),
  );
}