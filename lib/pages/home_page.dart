import 'package:flutter/material.dart';

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
          Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context)
                    .size
                    .width, //MQ consegue pegar o tamanho do dispositivo a partir do contexto, pegue o size e o width
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Center(
                    child: Text(
                  "Olá mundinho",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                )),
              ),
              Row(
                children: [
                  Container(
                    color: Colors.black12,
                    height: 100,
                    width: 200,
                  ),
                  Container(
                    color: Colors.pink,
                    height: 100,
                    width: 200,
                    child: Center(
                      child: Text(
                        "container 2",
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
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
