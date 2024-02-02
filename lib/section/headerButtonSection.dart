import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
   required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }){

    return OutlinedButton.icon(
        onPressed: buttonAction,
        icon: Icon(
         buttonIcon,
          color: buttonColor,
        ),
        label: Text(buttonText),
    );
  }
  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonAction: () {
              print("go to live");
            },
            buttonIcon: Icons.video_call,
            buttonColor: Colors.red,
            buttonText: "live",
          ),
          verticalDivider,
          headerButton(
            buttonAction: () {
              print("take photo");
            },
            buttonIcon: Icons.photo_library_rounded,
            buttonColor: Colors.green,
            buttonText: "photo",
          ),
          verticalDivider,
          headerButton(
            buttonAction: () {
              print("create chat room");
            },
            buttonIcon: Icons.video_call_rounded,
            buttonColor: Colors.purple,
            buttonText: "room",
          ),
        ],
      ),
    );
  }
}
