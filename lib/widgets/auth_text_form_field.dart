import 'package:flutter/material.dart';
import 'package:focus_fitness/utils/app_colors.dart';

class AuthTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Function(String? value) validator;
  const AuthTextFormField(
      {super.key,
      this.controller,
      required this.label,
      this.hintText,
      this.keyboardType, this.obscureText = false,
      required this.validator,
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller ?? null,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.subtitle,
          ),
        ),
      ),
      obscureText: obscureText,
    );
  }
}
