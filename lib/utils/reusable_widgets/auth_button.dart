import 'package:flutter/material.dart';

class AuthButton extends StatefulWidget {
  final Color? color;
  final Color textColor;
  final String textData;
  const AuthButton({
    super.key,
    required this.textData,
    required this.textColor,
    this.color,
  });

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: widget.color != null
            ? ElevatedButton.styleFrom(
                backgroundColor: widget.color, // override color only
              )
            : null,
        child: Text(
          widget.textData,
          style: TextStyle(
            color: widget.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
