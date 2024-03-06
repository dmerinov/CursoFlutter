void main(List<String> args) {
  print("program init");
  httpGet("example url").then((value) {
    print(value);
  });
  print("program end");
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    return 'Response';
  });
}

Future<String> httpFailedGet(String url) {
  throw "Error in http petition";

  return Future.delayed(const Duration(seconds: 2), () {
    return 'Response';
  });
}
