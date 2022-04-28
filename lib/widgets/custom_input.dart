import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  final bool showText;
  final dynamic suffix;
  final TextEditingController controller;
  // ignore: prefer_typing_uninitialized_variables
  final validator;
  const CustomInput(
      {Key? key,
      required this.hint,
      required this.showText,
      this.suffix,
      required this.controller,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: showText == true ? false : true,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          // width: 0.0 produces a thin "hairline" border
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color.fromARGB(143, 46, 42, 42), width: 0.0),
        ),
        border: const OutlineInputBorder(),
        suffixIcon: suffix,
        hintStyle:
            const TextStyle(fontSize: 17, color: const Color.fromARGB(167, 158, 158, 158)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromARGB(84, 49, 43, 110)),
          borderRadius: BorderRadius.circular(10.7),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 255, 255, 255),
        hintText: hint,
      ),
    );
  }
}
