import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(this.label, this.icon,{super.key});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: label,
            suffixIcon: Icon(icon),
          ),
        ),
      ),
    );
  }
}
