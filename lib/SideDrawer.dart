import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color listTextColor = Colors.white;
Color iconColor = Colors.grey;

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    bool _pressed = false;
    return Drawer(
      child: Container(
        color: Color(0xFF303030),
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: iconColor, fontSize: 25),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(
                    Icons.movie,
                    color: iconColor,
                  ),
                  title: Text(
                    'Movies',
                    style: TextStyle(color: listTextColor),
                  ),
                ),
              ),
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(Icons.live_tv_sharp, color: iconColor),
                  title: Text(
                    'Tv Shows',
                    style: TextStyle(
                      color: listTextColor,
                    ),
                  ),
                  onTap: () => {},
                ),
              ),
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(Icons.find_in_page, color: iconColor),
                  title: Text(
                    'Discover',
                    style: TextStyle(color: listTextColor),
                  ),
                  onTap: () => {},
                ),
              ),
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(Icons.person, color: iconColor),
                  title: Text(
                    'Populor People',
                    style: TextStyle(color: listTextColor),
                  ),
                  onTap: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.white24,
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(Icons.alarm, color: iconColor),
                  title: Text(
                    'Remainders',
                    style: TextStyle(color: listTextColor),
                  ),
                  onTap: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.solidQuestionCircle,
                      color: iconColor),
                  title: Text(
                    'Contact Developer',
                    style: TextStyle(color: listTextColor),
                  ),
                ),
              ),
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.solidQuestionCircle,
                      color: iconColor),
                  title: Text(
                    'Google+ Community',
                    style: TextStyle(color: listTextColor),
                  ),
                ),
              ),
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.unlockAlt, color: iconColor),
                  title: Text(
                    'Unlock Pro',
                    style: TextStyle(color: listTextColor),
                  ),
                ),
              ),
            ),
            Material(
              color: _pressed ? Colors.greenAccent : Color(0xFF303030),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _pressed = true;
                  });
                },
                child: ListTile(
                  leading: Icon(Icons.settings, color: iconColor),
                  title: Text(
                    'SETTINGS',
                    style: TextStyle(color: listTextColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
