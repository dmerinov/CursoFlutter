void main(List<String> args) async {
  print("program init");

  final value = await httpGet("url");
  print(value);

  try {
    final tryvalue = await httpFailedGet("url");
    print(tryvalue);
  } catch (error) {
    print(error);
  }

  print("program end");
}

//if func is async it allways returns a Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Response';
}

Future<String> httpFailedGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw "Error in http petition";
}
