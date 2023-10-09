import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String readInput() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String printTextAndReadString(String text) {
    print(text);
    return readInput();
  }

  static double printTextAndReadDouble(String text) {
    print(text);
    var value = readInput();
    return double.parse(value);
  }

  // static double? readDouble() {
  //   var value = readInput();
  //   try {
  //     return double.parse(value);
  //   } catch (e) {
  //     return null;
  //   }
  // }

  // static double? readTextExit(String texto, String valorSaida) {
  //   do {
  //     try {
  //       var value = readText(texto);
  //       if (value == valorSaida) {
  //         return null;
  //       }
  //       return double.parse(value);
  //     } catch (e) {
  //       print(texto);
  //     }
  //   } while (true);
  // }

  // static double? readDoubleText(String texto) {
  //   print(texto);
  //   return readDouble();
  // }
}