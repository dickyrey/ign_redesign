import 'package:flutter/material.dart';
import 'package:ign_redesign/constants.dart';
import 'package:ign_redesign/models/game.dart';

class DiscoverCard extends StatelessWidget {
  final Game game;
  DiscoverCard({this.game});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 12.0,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 200.0,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(game.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(game.title, style: kTitleStyle)
                ],
              ),
            ),
            Positioned(
              right: 20.0,
              bottom: 20.0,
              child: CircleAvatar(
                radius: 25.0,
                backgroundColor: kRedColor.withOpacity(.8),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
