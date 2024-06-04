import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          // Container(
          //   width: 100,
          //   color: Colors.red,
          //   margin: EdgeInsets.all(30),
          //   child: Column(
          //     children: [
          //       Text('data'),
          //       Positioned(left: 30, top: 50, child: Icon(Icons.person))
          //     ],
          //   ),
          // ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue, // Background
          ),

          Positioned(
            bottom: 50,
            right: 50,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.green, // Foreground
            ),
          ),
          // Container(
          //   color: Colors.blue,
          //   margin: EdgeInsets.all(70),
          // ),
          // Container(
          //   color: Colors.yellow,
          //   margin: EdgeInsets.all(120),
          // ),
        ],
      ),
    );
  }
}
