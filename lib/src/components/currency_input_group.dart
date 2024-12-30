import 'package:fintech/src/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyInputGroup extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final CurrencyModel selectedItem;
  final void Function(CurrencyModel model) onChanged;

  const CurrencyInputGroup({
    super.key,
    required this.items,
    required this.controller,
    required this.onChanged,
    required this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 64.0,
            child: DropdownButton<String>(
              value: selectedItem.name,
              iconSize: 24,
              elevation: 16,
              isExpanded: true,
              iconEnabledColor: Colors.amber,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: items
                  .map(
                    (value) => DropdownMenuItem<String>(
                      value: value.name,
                      child: Text(value.name),
                    ),
                  )
                  .toList(),
              onChanged: (String? value) {
                onChanged(items.firstWhere((element) => element.name == value));
              },
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Valor',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amber,
                ),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amber,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.amber,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
