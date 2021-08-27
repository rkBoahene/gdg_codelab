import 'package:flutter/material.dart';
import 'package:gdg_codelab/pages/listPage.dart';
import 'package:gdg_codelab/widgets/attraction_card.dart';

class LandingSearchBar extends StatelessWidget {
  const LandingSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Search hotel',
            style: TextStyle(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ListPage()));
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: mainThemeColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
