import 'dart:io';

import 'package:calculadora_imc/exceptions/invalid_name_exception.dart';
import 'package:calculadora_imc/exceptions/invalid_number_exception.dart';
import 'package:calculadora_imc/models/console_utils.dart';
import 'package:calculadora_imc/models/person.dart';

void execute() {
  print("Bem vindo ao sistema de cálculo de IMC!");
  
  var person = Person();
  try {
    person.setName(ConsoleUtils.printTextAndReadString("Digite seu nome: "));
    if (person.getName().trim() == "") {
      throw InvalidNameException();
    }
    person.setWeight(ConsoleUtils.printTextAndReadDouble("Digite seu peso em kg: "));
    person.setHeigth(ConsoleUtils.printTextAndReadDouble("Digite sua altura em metros: "));
  } on InvalidNameException {
    print(InvalidNameException());
    exit(0);
  } on FormatException {
    print(InvalidNumberException());
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  print(person);

  double imc = calculatedImc(person.getWeight(), person.getHeigth());
  String classification = "";
  switch(imc) {
    case < 16:
      classification = "Magreza grave";
      break;
    case < 17:
      classification = "Magreza moderada";
      break;
    case < 18.5:
      classification = "Magreza leve";
      break;
    case < 25:
      classification = "Saudável";
      break;
    case < 30:
      classification = "Sobrepeso";
      break;
    case < 35:
      classification = "Obesidade – GRAU I";
      break;
    case < 40:
      classification = "Obesidade – GRAU II | Severa";
      break;
    default:
    classification = "Obesidade – GRAU III | Mórbida";
      break;
  }

  print("Seu IMC calculado é: ${imc.toStringAsFixed(2)}. Classificação em $classification");
}

double calculatedImc(double weight, double heigth) {
  double imc = weight / (heigth * heigth);
  return imc;
}
