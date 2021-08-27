import 'package:flutter/material.dart';
import 'package:gdg_codelab/widgets/attraction_card.dart';

class BottomBarItem {
  String? label;
  bool? isSelected;
  IconData? icon;

  BottomBarItem({this.label, this.isSelected, this.icon});
}

final List<BottomBarItem> barItemsList = [
  BottomBarItem(label: 'Home', isSelected: true, icon: Icons.home),
  BottomBarItem(label: 'Account', isSelected: false, icon: Icons.person),
  BottomBarItem(
      label: 'Bookings', isSelected: false, icon: Icons.pending_actions),
  BottomBarItem(label: 'Payments', isSelected: false, icon: Icons.payments),
  BottomBarItem(label: 'More', isSelected: false, icon: Icons.more_horiz),
];

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<BottomBarItem> barItems = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItems.length, (index) {
          var barItem = barItems[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                barItems.forEach((element) {
                  element.isSelected = barItem == element;
                });
              });
            },
            child: Column(
              children: [
                Icon(
                  barItem.icon,
                  color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                ),
                Text(
                  barItem.label!,
                  style: TextStyle(
                      color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                      fontSize: 11),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
