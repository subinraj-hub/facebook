
import 'package:facebook/Widgets/postCard.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/section/headerButtonSection.dart';
import 'package:facebook/statusSection.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widgets/circularButton.dart';
import 'package:facebook/section/roomSection.dart';
import 'package:facebook/section/storySection.dart';
void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
                "facebook",
                style: TextStyle(
                  color: Colors.blueAccent[400],
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )
            ),
            actions: [
              CircularButton(
          buttonIcon: Icons.add_circle,
          buttonAction: () {
            print("add screen appears !");
            },
          ),
    CircularButton(
    buttonIcon: Icons.search_sharp,
      buttonAction: () {
    print("search screen appears!");
  },
  ),
              CircularButton(
                buttonIcon: Icons.message,
                buttonAction: () {
                  print("message screen appears !");
                },
              ),
  ],
  ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            RoomSection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            StorySection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
            PostCard(
                name: "bellingham",
                avatar: bellingham,
                publishedAt: "5h",
              postTitle: "its matchday always smile..!!!",
               postImage:bellingham,
              showBlueTick: true,
              likeCount:"310k" ,
              shareCount: "1.2k",
              commentCount: "2k",

            ),
          ],
        ),
    ),
    );
  }
}
