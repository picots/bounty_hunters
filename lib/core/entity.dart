import 'weapon.dart';

abstract class Entity {
  int maxHealth;
  int health;
  Weapon? weapon;
  

  Entity(this.maxHealth, {this.weapon}) : health = maxHealth;

  int get damage => weapon!.damage;

  void hit(Entity other);
  bool dodge();

  bool isDead() => health <= 0;

}