void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["impostor"];
  final List<String> sprites = ["ditto/front.png", "ditto/back.png"];

  // dynamic is used to note that a var has no specific type, hence it could be of any type. It is allways nullable
  /*dynamic errorMessage = "generic Error";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4];
  errorMessage = {1, 2, 3, 4};
  errorMessage = () => bool;*/

  final pokemonMap = {
    'name': pokemon,
    'hp': hp,
    'isAlive': isAlive,
    'abilities': abilities,
    'sprites': sprites
  };

  final pokemons = {
    '1': 'Bulbasur',
    '2': 'Ivysaur',
    '3': 'Venasaur',
  };

  print("""
  $pokemons
  ${pokemons.values.toList()}
  """);
  print("name: ${pokemonMap["name"]}");
  print("hp: ${pokemonMap["hp"]}");
  print("isAlive: ${pokemonMap["isAlive"]}");
  print("abilities: ${pokemonMap["abilities"]}");
  print("sprites: ${pokemonMap["sprites"]}");
}
