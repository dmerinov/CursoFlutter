void main(List<String> args) {
  emitNumbers().listen((event) {
    print("stream value: $event");
  });
}

/*
if you want to emit 5 values use .take(5)
 */
Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 2), (value) {
    print("from periodic: $value");
    return value;
  }).take(5);
}
