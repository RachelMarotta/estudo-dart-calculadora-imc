import 'package:calculadora_imc/imc_calculator.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calculate IMC', () {
    expect(app.calculatedImc(100.0, 2.0), equals(25.0));
  });
}
