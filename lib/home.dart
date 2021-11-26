import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_cube/flutter_cube.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  late Object helmet;

  @override
  void initState() {
    // implement initState
    helmet = Object(
        lighting: true,
        fileName: 'assets/helmet/helmet.obj',
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(),
        centerTitle: true,
        title: SelectableText(
          'Augmented Reality Helmet',
          style: GoogleFonts.merriweather(
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        elevation: 5,
        backgroundColor: Colors.black87,
        shadowColor: Colors.black26,
      ),
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(helmet);
            scene.camera.zoom = 7;
          },
        ),
      ),
    );
  }
}
