import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Card(),
  ));
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Center(child: Text(
          "ID CARD",
          style: TextStyle(color: Colors.yellow),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("images/img.png"),
          Divider(height: 30,color: Colors.green[900],),
          const Text(
            "STUDENT ID CARD",
            style: TextStyle(
              color: Colors.red,
              fontFamily: "ARLRDBD"
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage("images/myDisplayPicture.jpg"),
            radius: 70,
          ),
          Divider(height: 30,color: Colors.green[900],thickness: 1,),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Text("NAME       : SANJAY P M",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 20)),
                 Text("DEPARTMENT : B.E - CSE",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 20),),
                 Text("ROLL NO    : 21CS089",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 20),),
                 Text("VALID UPTO : 2021-2025",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 20),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
