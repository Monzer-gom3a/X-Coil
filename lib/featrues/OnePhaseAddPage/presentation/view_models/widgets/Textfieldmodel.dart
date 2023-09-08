import 'package:flutter/material.dart';

class TextFieldModel extends StatelessWidget {
  const TextFieldModel(
      {super.key,
      required this.label,
      required this.Controller,
      required this.align,
      required this.flix,
      required this.keyboardType});

  final String label;
  final TextEditingController Controller;
  final int flix;

  final TextAlign align;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flix,
      child: TextField(
        controller: Controller,
        keyboardType: keyboardType,
        cursorColor: const Color.fromARGB(255, 240, 20, 4),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black, fontFamily: "cairo"),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 177, 177, 177),
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 240, 20, 4),
                width: 2,
              )),
        ),
        textAlign: align,
       
        style: const TextStyle(
            fontFamily: "cairo", fontSize: 16, color: Colors.black),
      ),
    );
  }
}
