import 'package:flutter/material.dart';
import 'package:flutter/src/framework.dart';

class game extends StatefulWidget {
  const game({super.key});
  @override
  State<game> createState() => _ gameState();
}

Enum Player { x, o }

class _game extends State<game> {
  var items = <Player>[
    null, null, null, null, null, null, null, null,null 
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
            ),
            children: [
              for(int i = 0;i < 9;i++)
              Container(color: Colors.purple,),
            ],
        ),
      ),
    );
  }
}