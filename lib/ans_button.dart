import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  const AnsButton({
    super.key,
    required this.btnText,
    required this.onTap,
  });

  final String btnText;
  final void Function() onTap;

  @override
  Widget build(Object context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 116, 27, 241),
          foregroundColor: Colors.white,
          side: const BorderSide(
              color: Color.fromARGB(255, 66, 8, 147), width: 1.0)),
      child: Text(btnText),
    );
  }
}
