import 'package:flutter/material.dart';

import 'package:craft_like_a_bosch/home.dart';
import 'package:craft_like_a_bosch/helmet.dart';
import 'package:craft_like_a_bosch/statistics.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  final color = Colors.black;
  final hoverColor = Colors.white70;

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //color: const Color(0xFF63a4ff),
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
            decoration: const BoxDecoration(
              color: Color(0xFF1976d2),
            ),
            child: Image.asset("helmet/Blue-helmet.png"),
          ),
          ListTile(
            leading: Icon(Icons.home, color: color),
            title: Text("Home", style: TextStyle(color: color)),
            hoverColor: hoverColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
              //Navigator.pop(context);
            },
          ),
          const SizedBox(height: 24),
          const Divider(color: Colors.black54),
          const SizedBox(height: 24),
          ListTile(
            leading: Icon(Icons.sports_motorsports_rounded, color: color),
            title: Text('The Helmet', style: TextStyle(color: color)),
            hoverColor: hoverColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TheHelmet()),
              );
              //Navigator.pop(context);
            },
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.local_hospital, color: color),
            title: Text('Statistics', style: TextStyle(color: color)),
            hoverColor: hoverColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TheStats()),
              );
              //Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}
