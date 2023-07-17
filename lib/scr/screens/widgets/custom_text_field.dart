

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final bool? isObscure;
  final String hintText;
  final String imagePath;
  final TextInputAction inputAction;
  final String? Function(String? value) validator;
  final void Function(String value)? onChange;
  final TextEditingController? controller;
  bool res;

  CustomTextField({
    required this.hintText,
    required this.imagePath,
    required this.validator,
    this.controller,
    this.inputAction = TextInputAction.next,
    this.isObscure,
    this.onChange,
    this.res = false,
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textAlignVertical: TextAlignVertical.center,
      textInputAction: widget.inputAction,
      obscureText: false,
      validator: widget.validator,
      onChanged: widget.onChange,
      decoration: InputDecoration(
        fillColor: const Color(0xFFF5F4F8),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white),
        ),
        hintText: widget.hintText,
        errorMaxLines: 1,
        suffixIcon: Image(
          height: 50,
          width: 50,
          image: AssetImage(widget.imagePath),
        ),
        counterStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        filled: true,
        hoverColor: const Color(0xFFF5F4F8),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}


