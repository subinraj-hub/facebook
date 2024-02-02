


import 'package:facebook/Widgets/storyCard.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/cupertino.dart';

class StorySection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "adda to story",
            avatar: tovino,
            story: tovino,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "jude belly",
            avatar: jude,
            story: bellingham,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "alexia puttellas",
            avatar: alexia,
            story: storyalexia,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "fahad fasil",
            avatar: fahad,
            story: nasriyafahad,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "allu arjun",
            avatar: allu,
            story: pushparaj,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "david becham",
            avatar: becham,
            story: messibecham,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "juliyan alvarez",
            avatar: alvarez,
            story: spider,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
