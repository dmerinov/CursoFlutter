void main(List<String> args) {
  emitNumbers().listen((event) {
    print("stream value: $event");
  });
}

//async*
/**
async gives you a Future
async* gives you a Stream.
https://stackoverflow.com/questions/55397023/whats-the-difference-between-async-and-async-in-dart
 */
Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    //as if it was a return but without ending the function.
    yield i;
  }
}
