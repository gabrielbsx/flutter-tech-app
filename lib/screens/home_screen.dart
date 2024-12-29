import 'package:fintech/application/app_controller.dart';
import 'package:fintech/components/custom_switch.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void increment() => setState(() {
        counter++;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fintech',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(
          Icons.add,
        ),
      ),
      body: Center(
        child: CustomSwitch(),
      ),
    );
  }
}

