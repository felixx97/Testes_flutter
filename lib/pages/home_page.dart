import 'package:flutter/material.dart';
import 'package:flutter_application_13/pages/pagesviews/page_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar dois"),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          onePage(),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.cyan,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigation,
          onTap: (int index) {
            setState(() {
              indexBottomNavigation = index; //animando o bottom navegation
            });
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "Item 1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "Item 1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.adb_sharp),
              label: "Item 1",
            ),
          ]),
    );
  }
}
