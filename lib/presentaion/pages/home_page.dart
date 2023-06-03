import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  String player1Name = "Abbache";
  String player2Name = "Mestafa";
  int player1Score = 0;
  int player2Score = 0;

  bool player1Start = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container( 
       height: 1,
       width: double.infinity,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.amberAccent[200],
                padding: const EdgeInsets.only(top: 0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "X",
                          style: const TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        player1Name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "O",
                          style: const TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        player2Name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ]),
              ),
          Container(
                height: 400,
                width: double.infinity,
                color: Colors.greenAccent,
              ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                   child: Icon(Icons.replay),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Container(
                      child: Text('Start'),
                    ),
                   ],
                  ),
                ),    
        ],
       ), 
      ),
    );
  }
}