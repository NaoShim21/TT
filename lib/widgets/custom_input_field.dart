import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: (value) => formValues[formProperty] = value,
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
            //despues de llenar
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color.fromARGB(255, 255, 255, 255)),
              borderRadius: BorderRadius.vertical(),
            ),
            //antes de llenar
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: Color.fromARGB(255, 255, 255, 255)),
              borderRadius: BorderRadius.vertical(),
            )));
  }
}
