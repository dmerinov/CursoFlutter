void main() {
  final numbers = [1, 2, 2, 3, 3, 4, 5, 5];
  print("List: $numbers");
  print("Length: ${numbers[0]}");
  print("First: ${numbers.first}");
  print("Reversed: ${numbers.reversed}");

  final reversedNumbers = numbers.reversed;
  print("Iterable: $reversedNumbers");
  print("List: ${reversedNumbers.toList()}");
  //Sets have no repeated elements
  print("Set: ${reversedNumbers.toSet()}");

  final numbersGreaterThan2 = numbers.where((num) {
    return num > 2;
  });

  print("Numbers greater than 2: $numbersGreaterThan2");
}
