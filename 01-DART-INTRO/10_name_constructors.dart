void main(List<String> args) {
  final hero = Hero(name: "Wolverine", power: "Regen", isAlive: true);
  print(hero.toString());

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  final parsedHero = Hero.fromJson(rawJson);
  print(parsedHero.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'no name found',
        power = json['power'] ?? 'no power found',
        isAlive = json['isAlive'] ?? 'no isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'yes' : 'no'}';
  }
}
