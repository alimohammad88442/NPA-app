import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
 const AppTextField({super.key, required this.text, this.onChanged, this.sicon});
  final String text;
  final Widget? sicon;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: text,
            labelText: text,
            suffixIcon: sicon,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}