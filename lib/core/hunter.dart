import 'dart:math';

import 'entity.dart';
import 'target.dart';

class Hunter extends Entity {

  final int _chance;
  int nbTiles;
  int fortune = 0;

  @override
  void hit(Entity other) => (weapon != null) ? other.health -= damage : other.health--;

  @override
  bool dodge() => Random().nextInt(10) < _chance;

  void capture(Target target) => fortune += target.bounty;

  Hunter(this._chance, super.maxHealth, {super.weapon, this.nbTiles = 1});
}