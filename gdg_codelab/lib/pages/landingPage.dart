import 'package:flutter/material.dart';
import 'package:gdg_codelab/widgets/attraction_card.dart';
import 'package:gdg_codelab/widgets/landing_search_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          child: Icon(
            Icons.pool,
            color: mainThemeColor,
            size: 80,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(''), fit: BoxFit.cover),
            ),
          ),
          Container(
            color: mainThemeColor.withOpacity(0.7),
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Paradise',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 60),
              Icon(
                Icons.pool,
                color: Colors.white,
                size: 80,
              ),
              SizedBox(height: 10),
              Text(
                'Choose location to'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Find a hotel',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              LandingSearchBar()
            ],
          )
        ],
      ),
    );
  }
}
