import 'package:facebook/Widgets/avatar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: tovino, displayStatus: true),
          Avatar(displayImage: jude, displayStatus: true),
          Avatar(displayImage: alexia, displayStatus: true),
          Avatar(displayImage: fahad, displayStatus: true),
          Avatar(displayImage: allu, displayStatus: true),
          Avatar(displayImage: becham, displayStatus: true),
          Avatar(displayImage: alvarez, displayStatus: true),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return OutlinedButton.icon(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
      ),
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create \nRoom",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      onPressed: () {
        print("create a chat room");
        Border.fromBorderSide(BorderSide(color: Colors.blueAccent, width: 2));
      },
    );
  }
}
