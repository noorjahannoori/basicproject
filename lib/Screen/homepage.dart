import 'package:flutter/material.dart';
import 'package:myapp/Screen/foofdetail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Your Coffee',
          style: TextStyle(color: Colors.brown),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.brown,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
              fontWeight: FontWeight.bold), // Bold style for selected tab
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold), // Bold style for unselected tabs
          indicatorColor: Colors.brown,
          tabs: [
            Tab(text: 'Hot Coffee'),
            Tab(text: 'Cold Coffee'),
            Tab(text: 'Capines'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(choice: choices[index]),
              );
            }),
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(choice: choices[index]),
              );
            }),
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(choice: choices[index]),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.image});
  final String title;
  final String image;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Espresso', image: 'images/33.jpg'),
  Choice(title: 'Cappuccino', image: 'images/15.jpg'),
  Choice(title: 'Cappuccino', image: 'images/13.jpg'),
  Choice(title: 'Cappuccino', image: 'images/14.jpg'),
  Choice(title: 'Flat white', image: 'images/54.jpg'),
  Choice(title: 'Latte', image: 'images/99.jpg'),
  Choice(title: 'Latte', image: 'images/88.jpg'),
  Choice(title: 'Café au lait', image: 'images/22.jpg'),
  Choice(title: 'Café au lait', image: 'images/33.jpg'),
  Choice(title: 'Affogato', image: 'images/15.jpg'),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              image: choice.image,
              title: choice.title,
            ),
          ),
        );
      },
      child: Card(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Image.asset(choice.image, fit: BoxFit.cover),
              ),
              Text(
                choice.title,
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
