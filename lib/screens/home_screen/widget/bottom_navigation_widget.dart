import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_sample/constants/const_colors.dart';
import 'package:hotel_booking_sample/constants/const_widgets.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = 0;

    return Container(
      height: 80,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: white),
      child: StatefulBuilder(
        builder: (_, changeState) {
          return BottomNavigationBar(
            onTap: (value) {
              changeState(() {
                index = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedItemColor: Colors.red,
            backgroundColor: transp,
            currentIndex: index,
            showUnselectedLabels: false,
            selectedLabelStyle: const TextStyle(color: Colors.red),
            unselectedLabelStyle: const TextStyle(color: transp),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: activeIcon,
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: activeIcon,
                icon: Icon(CupertinoIcons.heart),
                label: 'Fav',
              ),
              BottomNavigationBarItem(
                activeIcon: activeIcon,
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                activeIcon: activeIcon,
                icon: Icon(Icons.person_outlined),
                label: 'Profile',
              ),
            ],
          );
        },
      ),
    );
  }
}
