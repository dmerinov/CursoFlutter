void main(List<String> args) {
  final mySquare = Square(side: 10);
  print(mySquare.calculateArea());
}

class Square {
  double _side; // side * side

  Square({required double side}) : _side = side;

// _ delante del nombre de la variable indica que es una propiedad privada.
  double get area {
    return _side * _side;
  }

  set side(double value) {
    if (value >= 0) {
      _side = value;
    } else {
      throw "value must be greater than 0";
    }
  }

  double calculateArea() {
    return _side * _side;
  }
}
