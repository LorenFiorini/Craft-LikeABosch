import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_cube/flutter_cube.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

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
      fileName: 'helmet/helmet.obj',
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
      body:  Center(
          child: SizedBox (
            width: screenWidth,
            child: Iframe(),
          ),
      ),


      /*
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(helmet);
            scene.camera.zoom = 7;
          },
        ),
      ),*/
    );
  }
}

class Iframe extends StatelessWidget {
  Iframe({Key? key}) : super(key: key) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframe', (int viewId) {
      var iframe = html.IFrameElement();
      iframe.src = "https://clara.io/embed/eb3200c3-b8d8-4a1d-8690-f8bb361351ec?renderer=webgl";
      return iframe;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  const HtmlElementView(viewType: 'iframe');
  }
}