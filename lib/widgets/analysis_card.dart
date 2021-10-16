import 'package:flutter/material.dart';
import 'package:ign_redesign/constants.dart';
import 'package:ign_redesign/models/game.dart';

class AnalysisCard extends StatelessWidget {
  final Game? game;
  AnalysisCard({this.game});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage(game!.image!),
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
        child: Row(
          children: [
            Text(
              game!.title!,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: kTitle2Style,
            ),
            Spacer(),
            Container(
              width: 50.0,
              height: 50.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white38,
              ),
              child: Text(
                game!.rating!,
                style: kTitleStyle.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
