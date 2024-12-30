import 'package:fintech/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final toTextEditingController = TextEditingController();
  final fromTextEditingController = TextEditingController();
  final homeController = HomeController(
    toText: toTextEditingController,
    fromText: fromTextEditingController,
  );

  test('Should convert from Real to Dollar', () {
    toTextEditingController.text = '1.0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Dollar');

    homeController.convert();

    expect(fromTextEditingController.text, '0.20');
  });

  test('Should convert from Dollar to Real', () {
    toTextEditingController.text = '1.0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Dollar');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.convert();

    expect(fromTextEditingController.text, '5.00');
  });

  test('Should convert from Euro to Real', () {
    toTextEditingController.text = '1.0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Euro');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.convert();

    expect(fromTextEditingController.text, '5.88');
  });

  test('Should convert from Pound to Real', () {
    toTextEditingController.text = '1.0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Pound');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.convert();

    expect(fromTextEditingController.text, '6.85');
  });

  test('Should convert from Yen to Real', () {
    toTextEditingController.text = '1.0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Yen');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.convert();

    expect(fromTextEditingController.text, '0.05');
  });

  test('Should convert from Real to Euro', () {
    toTextEditingController.text = '1.0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Euro');

    homeController.convert();

    expect(fromTextEditingController.text, '0.17');
  });

  test('Should convert from Real to Pound', () {
    toTextEditingController.text = '1.0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Pound');

    homeController.convert();

    expect(fromTextEditingController.text, '0.15');
  });

  test('Should convert from Real to Yen', () {
    toTextEditingController.text = '1.0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Yen');

    homeController.convert();

    expect(fromTextEditingController.text, '22.00');
  });

  test('Should convert any value with dot or comma', () {
    toTextEditingController.text = '1,0';

    homeController.fromCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Real');

    homeController.toCurrency = homeController.currencies
        .firstWhere((currency) => currency.name == 'Dollar');

    homeController.convert();

    expect(fromTextEditingController.text, '0.20');
  });
}
