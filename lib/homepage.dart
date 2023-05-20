import 'package:flutter/material.dart';
import 'package:instagram/acc_page.dart';
import 'package:instagram/create_page.dart';
import 'package:instagram/reel_page.dart';
import 'package:instagram/search_page.dart';
import 'body_homepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List<Widget> allpage = [
    Body_HomePage(),
    SearchPage(),
    CreatePage(),
    ReelPage(),
    AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allpage[currentIndex],
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: currentIndex == 0 ? Colors.black : Colors.grey,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: currentIndex == 1 ? Colors.black : Colors.grey,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: currentIndex == 2 ? Colors.black : Colors.grey,
                ),
                label: 'add'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_collection_outlined,
                  color: currentIndex == 3 ? Colors.black : Colors.grey,
                ),
                label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: currentIndex == 4 ? Colors.black : Colors.grey,
                ),
                label: 'Account'),
          ],
        ),
      ),
    );
  }
}
