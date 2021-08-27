import 'package:flutter/material.dart';
import 'package:gdg_codelab/widgets/attraction_card.dart';
import 'package:gdg_codelab/widgets/botton_bar.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainThemeColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Icon(Icons.pool, color: Colors.white),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: attractionsList.length,
                    itemBuilder: (context, index) {
                      Attraction attr = attractionsList[index];
                      return AttractionCard(attraction: attr);
                    }),
              ),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
