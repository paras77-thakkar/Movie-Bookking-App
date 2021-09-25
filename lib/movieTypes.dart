import 'package:flutter/material.dart';
import 'description.dart';
import 'modifiedText.dart';

class MovieTypes extends StatelessWidget {
  List movies = [];

  MovieTypes({Key key, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          mainAxisExtent: 220,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1),
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Description(
                    name: movies[index]['title'],
                    bannerUrl: 'https://image.tmdb.org/t/p/w500' +
                        movies[index]['backdrop_path'],
                    posterUrl: 'https://image.tmdb.org/t/p/w500' +
                        movies[index]['poster_path'],
                    description: movies[index]['overview'],
                    vote: movies[index]['vote_average'].toString(),
                    launchOn: movies[index]['release_date'],
                    orginalTitle: movies[index]['original_title'],
                  ),
                ),
              );
            },
            child: Container(
              height: 500,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 190,
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/giphy.gif',
                      image: 'https://image.tmdb.org/t/p/w500' +
                          movies[index]['poster_path'],
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: 120,
                    ),
                  ),
                  Container(
                    child: ModifiedText(
                      text: movies[index]['title'] == null
                          ? "loading"
                          : movies[index]['title'],
                      size: 12,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
