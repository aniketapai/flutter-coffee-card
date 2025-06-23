import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({required this.onPressed, required this.child, super.key});

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.brown[700],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
        ),
      ),
      child: child,
    );
  }
}

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.brown[900],
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
