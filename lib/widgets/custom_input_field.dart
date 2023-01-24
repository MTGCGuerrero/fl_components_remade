import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? helperText;
  final String? hintText;
  final IconData icon;
  final IconData suffixIcon;
  final TextInputType keyboardType;
  final bool isPassword;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    required this.labelText,
    required this.helperText,
    required this.hintText,
    required this.icon,
    required this.suffixIcon,
    required this.keyboardType,
    required this.isPassword,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: "Yo que se papu",
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: isPassword,
      onChanged: (value) {
        formValues[formProperty] = value;
        //print("value: $value");
      },
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        return value.length < 3 ? "Minimo de 3 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          counterText: "3 de caracteres",
          // ignore: unnecessary_null_comparison
          suffixIcon: suffixIcon == null ? null : Icon(icon),
          // ignore: unnecessary_null_comparison
          icon: icon == null ? null : Icon(icon),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ))),
    );
  }
}
