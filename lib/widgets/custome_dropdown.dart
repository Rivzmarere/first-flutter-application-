import 'package:flutter/material.dart';

class CustomeDropDownClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomeDropDownClass({ required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
     return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(
          53,
          53,
          53,
          1.0,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: DropdownButton(
        underline: Container(),
        onChanged: (_) {},
        value: values.first,
        items: values.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        dropdownColor: const Color.fromRGBO(
          53,
          53,
          53,
          1,
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
  }
