void main(List<String> args) {
  final mySquare = Square(side: 10);
  print(mySquare.calculateArea());
}

class Square {
  double _side; // side * side

  //if assert meets the requirements then the flow continues, else it throws an exception
  Square({required double side})
      : assert(side >= 0, 'side must be greater than 0'),
        _side = side;

// _ delante del nombre de la variable indica que es una propiedad privada.
  double get area {
    return _side * _side;
  }

  set side(double value) {
    if (value >= 0) {
      _side = value;
    }
  }

  double calculateArea() {
    return _side * _side;
  }
}
