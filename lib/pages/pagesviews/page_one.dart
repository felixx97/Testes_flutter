import 'package:flutter/material.dart';

class onePage extends StatelessWidget {
  const onePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
