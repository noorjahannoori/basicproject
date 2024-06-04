import 'package:flutter/material.dart';
import 'package:myapp/Screen/pagesdetailssssssssssssssssssss.dart';

class ProductPage extends StatelessWidget {
  final List<Map<String, String>> coffeeData = [
    {
      'image': 'images/99.jpg',
      'description': 'This is coffee number 1. It is rich in flavor and has a great aroma.'
    },
    {
      'image': 'images/99.jpg',
      'description': 'This is coffee number 2. It is smooth and has a unique taste.'
    },
    {
      'image': 'images/99.jpg',
      'description': 'This is coffee number 1. It is rich in flavor and has a great aroma.'
    },
    {
      'image': 'images/99.jpg',
      'description': 'This is coffee number 2. It is smooth and has a unique taste.'
    },
    // Add more coffee data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Discover the best coffee from around the world!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8, // Adjust this to fit your needs
              ),
              itemCount: coffeeData.length,
              itemBuilder: (context, index) {
                return CoffeeCard(
                  image: coffeeData[index]['image']!,
                  description: coffeeData[index]['description']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  final String image;
  final String description;

  CoffeeCard({required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CoffeeDetailPage(
              image: image,
              description: description,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.brown,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
