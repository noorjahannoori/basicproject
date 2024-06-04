import 'package:flutter/material.dart';

class CircularSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color to white
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          color: Colors.brown,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.brown), // Change icon color to brown
          SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(
                    color: Colors.brown), // Change hint text color to brown
              ),
            ),
          ),
        ],
      ),
    );
  }
}
