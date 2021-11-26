
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';


class Home extends StatefulWidget {
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
        fileName: 'assets/helmet/helmet.obj'
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(

      ),


      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene){
            scene.world.add(helmet);
            scene.camera.zoom = 7;
          },
        ),
      ),
    );
  }
}