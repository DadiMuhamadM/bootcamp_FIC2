import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  final List<Widget> list = const [
    Text("Home"),
    Text("Cart"),
    Text("Favorite"),
    Text("User"),
  ];

  int _selectedIndex = 0;
  List<dynamic> menuItem = [
    {
      'icon': 'assets/icons/home_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/cart_.svg',
      'label': 'Cart',
    },
    {
      'icon': 'assets/icons/favorite.svg',
      'label': 'Favorite',
    },
    {
      'icon': 'assets/icons/profile_.svg',
      'label': 'Profile',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binar - Bottom Navbar"),
      ),
      body: Center(
        child: list[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: menuItem.map((i) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              child: SvgPicture.asset(
                i['icon'],
                color: Colors.white,
              ),
            ),
            icon: SvgPicture.asset(
              i['icon'],
              color: Colors.grey,
            ),
            label: i['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
