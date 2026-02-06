import 'package:flutter_test/flutter_test.dart';

import 'package:bounty_hunters/core/hunter.dart';
import 'package:bounty_hunters/core/weapon.dart';
import 'package:bounty_hunters/core/target.dart';

void main() {
    Hunter h1 = Hunter(5, 15, weapon: Weapon.gun);
    Hunter h2 = Hunter(10, 1);
    Target t1 = Target(25, 2, 15, weapon: Weapon.knife);
    Target t2 = Target(0, 1, 1);
    
    setUpAll(() {
      h1.health = h1.maxHealth;
      h2.health = h2.maxHealth;
      t1.health = t1.maxHealth;
      t2.health = t2.maxHealth;
    });
    
    test('hit', () {
      h1.hit(t1);
      h2.hit(t2);
      t1.hit(h1);
      t2.hit(h2);
      expect(h1.isDead(),false);
      expect(h2.isDead(), true);
      expect(t1.isDead(), false);
      expect(t2.isDead(), true);
      expect(h1.health, 5);
      expect(t1.health, 5);
    });

    test('dodge', () {
      expect(h2.dodge(), true);
    });

    test('bounty', () {
      h1.capture(t1);
      expect(h1.fortune, 25);
    });
}