import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class InputWidget extends StatelessWidget {
  void Function(String) validator;
  TextEditingController? controller;
  bool obscureText;
  String labelText;
  Color cursorColor;
  Widget? suffixIcon;
  String errorText;
  String hintText;
  TextStyle hintStyle;
  TextInputType keyboardType;
  Color borderColor;
  Function onDone;
  Function onEditingComplete;
  TextInputAction textinputAction;
  Function(String) onChanged;

  InputWidget(
      {required this.keyboardType,
      required this.cursorColor,
      required this.validator,
      required this.controller,
      required this.borderColor,
      this.obscureText = false,
      required this.labelText,
      required this.hintText,
      required this.hintStyle,
      required this.onChanged,
      required this.suffixIcon,
      required this.onDone,
      required this.onEditingComplete,
      required this.textinputAction,
      this.errorText = ""});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      onFieldSubmitted: (s) {
        onDone();
      },
      onEditingComplete: () {
        onEditingComplete();
      },
      textInputAction: textinputAction,
      obscureText: obscureText,
      validator: (s) {
        // ignore: unnecessary_statements
        validator;
      },
      // ignore: unnecessary_null_comparison
      style: hintStyle == null ? null : hintStyle,
      keyboardType: keyboardType,
      controller: controller,
      cursorColor:
          // ignore: unnecessary_null_comparison
          cursorColor == null ? Theme.of(context).primaryColor : cursorColor,
      // ignore: unnecessary_null_comparison
      onChanged: onChanged == null ? null : onChanged,
      decoration: InputDecoration(
          errorMaxLines: 3,
          errorText: errorText.isEmpty ? null : errorText,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          hintText: hintText,
          // ignore: unnecessary_null_comparison
          hintStyle: hintStyle == null
              ? TextStyle(color: Colors.grey[600])
              : hintStyle,
          suffixIcon: suffixIcon,
          // ignore: unnecessary_null_comparison
          focusedBorder: borderColor == null
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor))
              : OutlineInputBorder(borderSide: BorderSide(color: borderColor)),
          // ignore: unnecessary_null_comparison
          enabledBorder: borderColor == null
              ? OutlineInputBorder()
              : OutlineInputBorder(borderSide: BorderSide(color: borderColor)),
          // border: borderColor == null
          //     ? OutlineInputBorder()
          //     : OutlineInputBorder(
          //         borderSide: BorderSide(color: borderColor)),
          labelText: labelText),
    );
  }
}
