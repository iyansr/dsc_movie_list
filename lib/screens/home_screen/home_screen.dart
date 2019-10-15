import 'package:flutter/material.dart';
import 'package:movie_list/screens/home_screen/widgets/highlight_card.dart';
import 'package:movie_list/screens/home_screen/widgets/trending_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              alignment: Alignment.topLeft,
              child: Text(
                "Movies",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1A1A4E),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 300.0,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                HighlightCard(
                  imgURL:
                      "https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg",
                  movieName: "Joker",
                  movieDate: "October 4",
                ),
                HighlightCard(
                  imgURL:
                      "https://m.media-amazon.com/images/M/MV5BZjU0Yzk2MzEtMjAzYy00MzY0LTg2YmItM2RkNzdkY2ZhN2JkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_SX667_AL_.jpg",
                  movieName: "JoJo Rabbit",
                  movieDate: "October 18",
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.topLeft,
            child: Text(
              "Trending",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff1A1A4E),
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                TrendingCard(
                  imgURL:
                      "https://m.media-amazon.com/images/M/MV5BYzcyZDNlNDktOWRhYy00ODQ5LTg1ODQtZmFmZTIyMjg2Yjk5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_SX675_AL_.jpg",
                  movieTitle: "Ford v Ferrari",
                  movieDate: "November 15",
                  movieGenre: "Drama, True Story",
                ),
                TrendingCard(
                  imgURL:
                      "https://m.media-amazon.com/images/M/MV5BYjcwNjZhNGYtOGNlNy00NGI3LTlmODMtMGZlMjA3YjA0Njg0XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SY1000_SX675_AL_.jpg",
                  movieTitle: "Zombieland : Double Tap",
                  movieDate: "November 21",
                  movieGenre: "Drama, Comedy",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
