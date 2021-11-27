import 'package:flutter/material.dart';

import 'package:craft_like_a_bosch/home.dart';
import 'package:craft_like_a_bosch/helmet.dart';
import 'package:craft_like_a_bosch/statistics.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  final color = Colors.white;
  final hoverColor = Colors.white70;

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Material(
        color: const Color(0xFF63a4ff),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
              decoration: const BoxDecoration(
                color: Color(0xFF1976d2),
              ),
              child: Image.asset("helmet/Blue-helmet.png"),
            ),
            Container(
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const SizedBox(height: 24),
                  ListTile(
                    leading: Icon(Icons.sports_motorsports_rounded, color: color),
                    title: Text("Home", style: TextStyle(color: color)),
                    hoverColor: hoverColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TheHelmet()),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  const Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  ListTile(
                    leading:Icon(Icons.sports_motorsports_rounded, color: color),
                    title: Text('Helmet', style: TextStyle(color: color)),
                    hoverColor: hoverColor,
                    //onTap: onClicked,
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading:  Icon(Icons.favorite_border, color: color),
                    title: Text('Statistics', style: TextStyle(color: color)),
                    hoverColor: hoverColor,
                    //onTap: onClicked,
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }


  void selectedItem(BuildContext context, int index) {
    //Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>  const TheHelmet(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const TheStats(),
        ));
        break;
    }
  }
}