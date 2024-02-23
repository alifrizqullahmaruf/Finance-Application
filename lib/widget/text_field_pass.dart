import 'package:flutter/material.dart';

class TextFieldPass extends StatefulWidget {
  const TextFieldPass({Key? key, required this.label, required this.icon}) : super(key: key);

  final String label;
  final IconData icon;

  @override
  _TextFieldPassState createState() => _TextFieldPassState();
}

class _TextFieldPassState extends State<TextFieldPass> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          obscureText: _isObscure,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            labelText: widget.label,
            // menambahkan ikon untuk toggle keamanan
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? widget.icon : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
