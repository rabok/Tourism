import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tourism/Art%20Gallaries.dart';
import 'package:tourism/Hot%20Springs.dart';
import 'package:tourism/Hotels.dart';
import 'package:tourism/Lakes.dart';
import 'package:tourism/Landscapes.dart';
import 'package:tourism/Museums.dart';
import 'package:tourism/National%20Parks.dart';
import 'package:tourism/Sports%20Grounds.dart';

void main() {
  runApp(TourismApp());
}

class TourismApp extends StatefulWidget {
  @override
  State<TourismApp> createState() => _TourismAppState();
}

class _TourismAppState extends State<TourismApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> slideMessages = [
    'Explore the beauty of our national parks',
    'Discover the serenity of our lakes',
    'Relax in rejuvenating hot springs',
    'Immerse yourself in our rich cultural museums',
    'Experience the thrill of our sports grounds'
  ];

  final List<Widget> categories = [
    CategoryWidget(
      title: 'National Parks',
      color: Colors.red,
    ),
    CategoryWidget(
      title: 'Lakes',
      color: Colors.green,
    ),
    CategoryWidget(
      title: 'Hot Springs',
      color: Colors.yellow,
    ),
    CategoryWidget(
      title: 'Museums',
      color: Colors.blue,
    ),
    CategoryWidget(
      title: 'Sports Grounds',
      color: Colors.pink,
    ),
    CategoryWidget(
      title: 'Art Gallaries',
      color: Colors.orange,
    ),
    CategoryWidget(
      title: 'Hotels',
      color: Colors.blue,
    ),
    CategoryWidget(
      title: 'Landscapes',
      color: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tourism App')),
      drawer: Drawer(
          // ... (Drawer code remains unchanged)
          ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
            ),
            items: slideMessages.map((message) {
              return Container(
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    message,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              padding: EdgeInsets.all(16),
              children: categories,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryWidget({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
