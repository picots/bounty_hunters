enum Weapon {
  gun(10),
  knife(5),
  tazer(7),
  sniper(15);

  final int damage;

  const Weapon(this.damage);
}