
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool  displayStatus;
  final bool displayBorder;
  final double width;
  final double height;
  Avatar({
    required this.displayImage,
    required this.displayStatus,
     this.displayBorder = false,
    this.width = 50,
    this.height = 50,
  });
  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if (displayStatus == true) {
      statusIndicator = Positioned(

        bottom: 6,
        right: 6,
        child: Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder ?  Border.all(
              color: Colors.blueAccent,
              width: 3,

            )
                :Border(),
          ),
          padding: EdgeInsets.only(left: 4, right: 4),
    child:ClipRRect(
    borderRadius: BorderRadius.circular(300),
    child: Image.asset(
    displayImage,
    width: width,
    height: width,
    ),
    ),
        ),
        statusIndicator,
    ],
    );
    }
}
