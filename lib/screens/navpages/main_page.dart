import 'package:flutter/material.dart';
import 'package:my_app/screens/navpages/bar_item_page.dart';
import 'package:my_app/screens/navpages/home_page.dart';
import 'package:my_app/screens/navpages/my_page.dart';
import 'package:my_app/screens/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(tooltip: 'Home',icon: Icon(Icons.apps), label: 'Home'),
          BottomNavigationBarItem(tooltip: 'Bar',icon: Icon(Icons.bar_chart_sharp), label: 'Bar'),
          BottomNavigationBarItem(tooltip: 'Search',icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(tooltip: 'My',icon: Icon(Icons.person), label: 'My'),
        ],
      ),
    );
  }
}
