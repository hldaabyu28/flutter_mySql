import 'package:flutter/material.dart';
import 'package:test_udacoding/widgets/image_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Welcome' , style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: Icon(Icons.person, color: Colors.white,),
          ),
        ],
      ),
      body: Column(
        children: [
          ImageSlider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text('Welcome to Home Page', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}