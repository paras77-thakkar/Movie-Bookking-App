import 'package:flutter/material.dart';
import 'modifiedText.dart';
import 'dropDown.dart';
import 'bottomSheet.dart';

class Description extends StatelessWidget {
  String name, description, bannerUrl, posterUrl, vote, launchOn, orginalTitle;

  Description({
    Key key,
    this.name,
    this.description,
    this.bannerUrl,
    this.posterUrl,
    this.vote,
    this.launchOn,
    this.orginalTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;
    int startIndex = 0;
    int endIndex = 4;
    String YearLaunchOn = launchOn.substring(startIndex, endIndex);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
              bottomSheet(context);
            },
            child: Text("BOOK-TICKET"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      backgroundColor: Color(0xFF212121),
      body: Column(
        children: [
          Container(
            height: 320,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 320,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  bottom: 60,
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent,
                    ),
                    child: Center(
                      child: ModifiedText(
                        text: '⭐' + vote,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 20,
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent,
                    ),
                    child: Center(
                      child: ModifiedText(
                        text: YearLaunchOn,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 5,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 50,
                      width: c_width,
                      child: ModifiedText(
                        text: name,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xFF424242),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ModifiedText(
                  text: 'SYNOPSIS',
                  size: 20,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 200,
                      width: 100,
                      child: Image.network(posterUrl),
                    ),
                    Container(
                      child: ModifiedText(
                        text: description,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: ModifiedText(
                    text: 'About',
                    size: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: ModifiedText(
                    text: 'Original Title: ' + orginalTitle,
                    size: 14,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: 5,
                  ),
                  alignment: Alignment.centerLeft,
                  child: ModifiedText(
                    text: 'Releasing on: ' + launchOn,
                    size: 14,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
