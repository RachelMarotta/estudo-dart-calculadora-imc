class InvalidNumberException implements Exception {
  String numberException() => "Número inválido";

  @override
  String toString() {
    return "InvalidNumberException: ${numberException()}";
  }
}