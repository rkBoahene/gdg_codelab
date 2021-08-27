import 'package:flutter/material.dart';
import 'package:gdg_codelab/pages/landingPage.dart';

const Color mainThemeColor = Color(0xFF272D8D);

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LandingPage(),
        ),
      );
    });

    return Stack(
      children: [
        Container(
          color: mainThemeColor,
        ),
        Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.pool,
            color: Colors.white,
            size: 80.00,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}
