class CurrencyModel {
  final String name;
  final String code;
  final double value;

  CurrencyModel({
    required this.name,
    required this.code,
    required this.value,
  });

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(name: 'Dollar', code: 'USD', value: 1.0),
      CurrencyModel(name: 'Euro', code: 'EUR', value: 0.85),
      CurrencyModel(name: 'Pound', code: 'GBP', value: 0.73),
      CurrencyModel(name: 'Yen', code: 'JPY', value: 110.0),
      CurrencyModel(name: 'Real', code: 'BRL', value: 5.0),
    ];
  }
}
