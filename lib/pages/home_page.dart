import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar dois"),
      ),
      body: Column(
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
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
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
