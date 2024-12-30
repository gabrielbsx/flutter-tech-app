import 'package:fintech/src/components/currency_input_group.dart';
import 'package:fintech/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  late HomeController homeController;

  final TextEditingController fromTextController = TextEditingController();
  final TextEditingController toTextController = TextEditingController();

  @override
  void initState() {
    super.initState();

    homeController = HomeController(
      fromText: fromTextController,
      toText: toTextController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversor de Moedas'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.webp',
                width: 120,
              ),
              SizedBox(
                height: 40,
              ),
              CurrencyInputGroup(
                selectedItem: homeController.toCurrency,
                items: homeController.currencies,
                controller: homeController.toText,
                onChanged: (model) {
                  homeController.toCurrency = model;
                },
              ),
              SizedBox(
                height: 10,
              ),
              CurrencyInputGroup(
                selectedItem: homeController.fromCurrency,
                items: homeController.currencies,
                controller: homeController.fromText,
                onChanged: (model) {
                  homeController.fromCurrency = model;
                },
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  homeController.convert();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                child: const Text(
                  'Converter',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
