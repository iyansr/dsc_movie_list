import 'package:flutter/material.dart';
import 'package:movie_list/screens/home_screen/details_screen.dart';

class TrendingCard extends StatelessWidget {
  final String imgURL;
  final String movieTitle;
  final String movieDate;
  final String movieGenre;

  TrendingCard({
    this.imgURL,
    this.movieTitle,
    this.movieDate,
    this.movieGenre,
  });

  trendingCardImage(String _imgURL) {
    return Container(
      height: 116.0,
      width: 84.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: NetworkImage(_imgURL),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: RawMaterialButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: trendingCardImage(imgURL),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      movieTitle,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      movieDate,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      movieGenre,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => ViewDetails(),
            ),
          );
        },
      ),
    );
  }
}
