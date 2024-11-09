import 'package:airplane/styles/theme/theme.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String label;
  final String hintText;
  final bool obsecureText;

  const InputField({super.key, required this.label, required this.hintText, this.obsecureText = false});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(widget.label, style: Theme.of(context).textTheme.bodyMedium),
      const SizedBox(height: 6),
      TextFormField(
        obscureText: widget.obsecureText,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle:
                Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.secondary
                ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defRadius)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defRadius),
                borderSide: BorderSide(
                    width: 2, color: Theme.of(context).colorScheme.primary))),
      )
    ]);
  }
}