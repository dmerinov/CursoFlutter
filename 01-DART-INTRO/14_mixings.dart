//part 24,25
// https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
void main(List<String> args) {
  final flipper = Delfin();
  flipper.nadar();
  final murcielago = Murcielago();
  murcielago.caminar();
  murcielago.volar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin class Volador {
  void volar() => print('estoy volando');
}

mixin class Nadador {
  void nadar() => print('estoy nadando');
}

mixin class Caminante {
  void caminar() => print('estoy caminando');
}

//mixings palabra clave with
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}
