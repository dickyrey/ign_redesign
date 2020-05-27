import 'package:flutter/material.dart';
import 'package:ign_redesign/constants.dart';
import 'package:ign_redesign/models/game.dart';

class TrendingCard extends StatelessWidget {
  final Game game;
  TrendingCard({this.game});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage(game.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 150.0,
        height: 150.0,
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black38, Colors.black87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Text(
          game.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: kTitle2Style,
        ),
      ),
    );
  }
}
