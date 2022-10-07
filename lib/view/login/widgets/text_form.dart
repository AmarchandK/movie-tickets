import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_tickets/constants/styles.dart';
import '../../../controller/loginpage_controller.dart';

class LoginTextFormField extends GetView<LoginPageController> {
  const LoginTextFormField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    this.obscureText,
    this.length,
    required this.textEditingController,
    this.isPasswordField,
    this.onChanged,
    this.validator,
  }) : super(key: key);
  final String hintText;
  final TextInputType keyboardType;
  final bool? obscureText;
  final int? length;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController textEditingController;
  final Widget? isPasswordField;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: TextFormField(
        maxLength: length,
        controller: textEditingController,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: wColor),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          hoverColor: wColor,
          fillColor: const Color.fromARGB(255, 222, 184, 138),
          filled: true,
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            color: const Color.fromARGB(255, 94, 94, 94),
          ),
          suffixIcon: isPasswordField,
        ),
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
      ),
    );
  }
}
