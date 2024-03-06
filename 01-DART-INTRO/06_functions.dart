void main() {
  print(greetEveryone());
  print("Suma: ${addTwoNumbers(1, 2)}");
  print("Suma lambda: ${addTwoNumbersLambda(1, 2)}");
}

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
int optionalAddTwoNumbersLambda(int a, [int b = 0]) {
  //b = b ?? 0; // ?? is null?
  //b ??= 0;
  return a + b;
}
