import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_cube/flutter_cube.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:craft_like_a_bosch/navigation.dart';



class TheStats extends StatelessWidget {
  const TheStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF0d47a1),
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
      drawer: const NavigationDrawerWidget(),
      body:  Center(
        child: SizedBox (
          width: screenWidth,
          height: screenHeight,
          child: Iframe(),
        ),
      ),

    );
  }
}


class Iframe extends StatelessWidget {
  Iframe({Key? key}) : super(key: key) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframe', (int viewId) {
      var iframe = html.IFrameElement();
      iframe.src = 'https://extranet.who.int/roadsafety/death-on-the-roads?embed=true#ticker/motorcyclist';
      return iframe;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  const HtmlElementView(viewType: 'iframe');
  }
}

// "https://clara.io/embed/d7c4bca8-fe1b-47b1-ad15-dd2746b32c11?renderer=webgl"
//<iframe src='https://extranet.who.int/roadsafety/death-on-the-roads?embed=true#ticker' style='border: 0; width: 100%; height: 700px'></iframe>