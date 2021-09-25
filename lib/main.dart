import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:http/http.dart';
import 'SideDrawer.dart';
import 'movieTypes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  List popularMovies = [];
  List topRatedMovies = [];
  List upcomingMovies = [];

  final String apiKey = '4e32baa1ceb6d55399380e9a98d078ea';
  final String readAccessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0ZTMyYmFhMWNlYjZkNTUzOTkzODBlOWE5OGQwNzhlYSIsInN1YiI6IjYxNGMxNDcxNDgxMzgyMDA5M2UzNTc3ZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.0WZyp4ZVkGScvKJ2a0wJUiZrAn2SagOI848-TgTw25Y';

  void initState() {
    super.initState();
    loadMovies();
  }

  loadMovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apiKey, readAccessToken),
      logConfig: ConfigLogger(showLogs: true),
    );
    Map popularResults = await tmdbWithCustomLogs.v3.movies.getPouplar();
    Map topRatedResults = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map upcoimngResults = await tmdbWithCustomLogs.v3.movies.getUpcoming();

    setState(() {
      popularMovies = popularResults['results'];
      topRatedMovies = topRatedResults['results'];
      upcomingMovies = upcoimngResults['results'];
    });
    print(popularMovies);
    print(topRatedMovies);
    print(upcomingMovies);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF424242),
        drawer: SideDrawer(),
        appBar: AppBar(
          bottom: TabBar(indicatorColor: Color(0xFF69F0AE), tabs: [
            Tab(text: 'POPULAR'),
            Tab(text: 'TOP-RATED'),
            Tab(text: 'UPCOMING'),
          ]),
          backgroundColor: Colors.black,
          title: Text('BOOK MOVIE'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            MovieTypes(movies: popularMovies),
            MovieTypes(movies: topRatedMovies),
            MovieTypes(movies: upcomingMovies),
          ],
        ),
      ),
    );
  }
}
