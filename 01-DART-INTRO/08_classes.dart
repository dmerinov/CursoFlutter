String greetEveryone() {
  return "Helo everyone";
}

//lambdas cant have a body
String greetEveryoneLambda() => "Hello Everyone";

//parameters can be untyped although is discouraged
int addTwoNumbers(int a, int b) {
  return a + b;
}

//parameters can be untyped although is discouraged
// to set a nullable param you can use: int? x
int addTwoNumbersLambda(int a, int b) => a + b;

//parameters in between [] are optional positional parameters, their default value is null
int optionalAddTwoNumbersLambda(int a, [int b = 0]) {
  //b = b ?? 0; // ?? is null?
  //b ??= 0;
  return a + b;
}

//parameters within {} are optional an thus, the don't have to be typed
//required makes a parameter mandatory
String greetPerson({required String name, message = "Hola, "}) {
  return "Hola, Fernando";
}

void main() {
  final Hero wolverine = Hero(name: "Logan", power: "Regen");
  print(wolverine.name);
  print(wolverine.power);
  print(wolverine.toString());
}

class Hero {
  String name;
  String power;

  //init class
  /*Hero(String pName, String pPower) :
    name = pName,
    power = pPower; */

  //another way to init class
  Hero({required this.name, required this.power});

  //it is used to change the default behaviour of a function.
  @override
  String toString() {
    return """
    name: $name
    power: $power
     """;
  }
}
