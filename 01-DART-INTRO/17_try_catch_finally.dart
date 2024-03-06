void main(List<String> args) async {
  print("program init");

  final value = await httpGet("url");
  print(value);

  try {
    final tryvalue = await httpFailedGet("url");
    print(tryvalue);
  } on Exception catch (err) {
    print("err type Exception: $err");
  } catch (error) {
    print("something went wrong $error");
  } finally {
    print('finally operation reached');
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
  throw Exception("No params in url");
}
