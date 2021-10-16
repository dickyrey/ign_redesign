import 'package:flutter/material.dart';
import 'package:ign_redesign/constants.dart';
import 'package:ign_redesign/models/game.dart';
import 'package:ign_redesign/widgets/analysis_card.dart';
import 'package:ign_redesign/widgets/custom_appbar.dart';
import 'package:ign_redesign/widgets/top_list_card.dart';
import 'package:ign_redesign/widgets/trending_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50.0),
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 25.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                  )),
              child: Column(
                children: [
                  CustomAppbar(),
                  SizedBox(height: 25.0),
                  CategoryList(title: "Trending"),
                  SizedBox(height: 15.0),
                  Container(
                    width: double.infinity,
                    height: 150.0,
                    margin: EdgeInsets.only(left: 18.0),
                    child: ListView.builder(
                      itemCount: trendingList.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        var game = trendingList[index];

                        return TrendingCard(game: game);
                      },
                    ),
                  ),
                  SizedBox(height: 25.0),
                  CategoryList(title: "Analysis"),
                  SizedBox(height: 15.0),
                  Container(
                    width: double.infinity,
                    height: 150.0,
                    margin: EdgeInsets.only(left: 18.0),
                    child: ListView.builder(
                      itemCount: analysisList.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        var analysis = analysisList[index];

                        return AnalysisCard(game: analysis);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 25.0, left: 18.0),
                child: Text(
                  "Top next games",
                  style: kTitleStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            ListView.builder(
              itemCount: topList.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                var game = topList[index];
                return TopListCard(game: game);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  final String? title;
  CategoryList({this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Text(title!, style: kTitleStyle),
          Spacer(),
          Text("View all", style: kViewAllStyle)
        ],
      ),
    );
  }
}
