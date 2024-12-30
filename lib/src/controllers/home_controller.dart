import 'package:fintech/src/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  late List<CurrencyModel> currencies;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  TextEditingController toText;
  TextEditingController fromText;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies.firstWhere((currency) => currency.name == 'Dollar');
    fromCurrency = currencies.firstWhere((currency) => currency.name == 'Real');
  }

  void convert() {
    double value = double.tryParse(toText.text.replaceAll(',', '.')) ?? 1.0;
    double result = 0.0;

    result = value * toCurrency.value / fromCurrency.value;

    fromText.text = result.toStringAsFixed(2);
  }
}
