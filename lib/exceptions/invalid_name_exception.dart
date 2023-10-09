class InvalidNameException implements Exception {
  String nameException() => "Nome inválido";

  @override
  String toString() {
    return "InvalidNameException: ${nameException()}";
  }
}
