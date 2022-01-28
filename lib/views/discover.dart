import 'package:flutter/material.dart';
import 'package:ign_redesign/models/game.dart';
import 'package:ign_redesign/widgets/custom_appbar.dart';
import 'package:ign_redesign/widgets/discover_card.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 50.0),
      child: Column(
        children: [
          CustomAppbar(),
          Expanded(
            child: ListView.builder(
              itemCount: discoverList.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var game = discoverList[index];
                return DiscoverCard(game: game);
              },
            ),
          ),
        ],
      ),
    );
  }
}
