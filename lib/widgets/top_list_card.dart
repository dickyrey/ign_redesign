import 'package:flutter/material.dart';
import 'package:ign_redesign/constants.dart';
import 'package:ign_redesign/models/game.dart';

class TopListCard extends StatelessWidget {
  final Game game;
  TopListCard({this.game});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            image: AssetImage(game.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        game.title,
        style: kTitle2Style.copyWith(color: Colors.white),
      ),
      subtitle: Text(
        game.platform,
        style: kSubtitleStyle,
      ),
      trailing: OutlineButton(
        onPressed: () {},
        borderSide: BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          "Follow",
          style: kTitle3Style.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
