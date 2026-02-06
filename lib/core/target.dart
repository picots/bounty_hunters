import 'dart:math';

import 'entity.dart';

class Target  extends Entity{

  int bounty;
  final int _difficulty;

  @override
  bool dodge() => Random().nextInt(_difficulty * 2) - _difficulty > 0;

  @override
  void hit(Entity other) => (weapon != null) ? other.health -= _difficulty * damage : other.health--;

  Target(this.bounty, this._difficulty, super.maxHealth, {super.weapon});
    
}