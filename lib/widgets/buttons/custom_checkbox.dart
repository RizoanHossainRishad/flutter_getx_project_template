import 'package:flutter/material.dart';

class CheckboxWidget extends StatelessWidget {

  final VoidCallback onPressed;
  const CheckboxWidget({super.key,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: false,
      onChanged: (v) {
        onPressed();
      },
    );
  }
}