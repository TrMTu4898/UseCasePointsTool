import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextFiedDefause extends StatefulWidget {
  final Function(String) onChanged;
  final TextEditingController controller;
  final String hintText;
  final Widget prefixIcon;

  const TextFiedDefause({
    Key? key,
    required this.onChanged,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  State<TextFiedDefause> createState() => _TextFiedDefauseState();
}

class _TextFiedDefauseState extends State<TextFiedDefause> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.emailAddress,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          filled: true,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          fillColor: Color.fromARGB(255, 250, 252, 255),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff50C2C9),
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        ));
  }
}
