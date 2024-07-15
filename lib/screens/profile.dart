import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_udacoding/screens/login.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white,),
        ),
        title: Text('Profile' , style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/png/profile-user.png'),
                    fit: BoxFit.fill,
                  ),
                ),
             ),
             Gap(70),
             ElevatedButton(
              onPressed:(){
                 Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (route) => false,
                );
              } , child: Text('Logout'),),
            ],
          ),
        ),
      ),
    );
  }
}