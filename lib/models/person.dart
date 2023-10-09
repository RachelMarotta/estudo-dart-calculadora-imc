class Person {
  String _name = "";
  double _weight = 0.0;
  double _heigth = 0.0;

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getWeight() {
    return _weight;
  }

  void setHeigth(double heigth) {
    _heigth = heigth;
  }

  double getHeigth() {
    return _heigth;
  }

   @override
  String toString() {
    return {
      "Nome": _name,
      "Peso": _weight,
      "Altura": _heigth
    }.toString();
  }
}
