import 'package:flutter/material.dart';

import '../../utils/colors_code.dart';

class DDButton extends StatefulWidget {
  const DDButton({super.key});

  @override
  State<DDButton> createState() => _DDButtonState();
}

class _DDButtonState extends State<DDButton> {
  final items = <String>['One', 'Two', 'Three', 'Four'];

  String? valueChoose;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(color: ColorsCode.primary_color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton(
            underline: SizedBox(),
            isExpanded: true,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 35,
            hint: Text("Search"),
            value: valueChoose,
            onChanged: (newValue) {
              setState(() {
                valueChoose = newValue;
              });
            },
            items: items.map((valueItem) {
              return DropdownMenuItem(value: valueItem, child: Text(valueItem));
            }).toList()),
      ),
    );
  }
}