import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  String player1Name = "Mayar";
  String player2Name = "Nada";
  int player1Score = 0;
  int player2Score = 0;
  bool player1Start = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Container( 
         width: double.infinity,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Color.fromARGB(255, 214, 138, 227),
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
                          'Mayar',
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
                          color: Color.fromARGB(255, 214, 138, 227),
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
                          'Nada',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ]
                  ),
                ),
            Container(
                  height: 400,
                  width: double.infinity,
                  color: Color.fromARGB(255, 214, 138, 227),
                  child:  GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 3,
                    ),

                    children: [

                      for(int i = 0;i < 9;i++)
                      Container(color: Color.fromARGB(255, 230, 202, 235)),
                    ],
                  ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    width: 50.0,
                  ),
                  ElevatedButton.icon(
                    onPressed:  () {},
                    icon: Icon(
                      Icons.replay,
                      size: 24.0,
                      color: Colors.purple,
                      ),
                      label: Text('Play again'),
                  ),
                  ElevatedButton.icon(
                    onPressed:  () {},
                    icon: Icon(
                      Icons.start,
                      size: 24.0,
                      color: Colors.purple,
                      ),
                      label: Text('Start'),
                  ),
                ],
              ),
            ),
          ],
         ), 
        ),
      ),
    );
  }
}