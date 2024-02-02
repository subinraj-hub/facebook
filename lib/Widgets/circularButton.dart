import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;
  CircularButton({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor = Colors.black,
  });
  @override
  Widget build(BuildContext context) {
   return Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: Icon(
            buttonIcon,
            color: iconColor,
            size: 28,

          ), onPressed: buttonAction,
        ),
  );
  }
}


