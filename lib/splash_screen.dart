import 'dart:async';

import 'package:chapter9/home_screen.dart';
import 'package:chapter9/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(Duration(seconds: 3), () {
     Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen(),));
   });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        height: double.infinity,
        fit: BoxFit.fitHeight,
          image: NetworkImage(
              'https://images.pexels.com/photos/20204362/pexels-photo-20204362/free-photo-of-ashville-appalachian-mountains-north-carolina.jpeg?auto=compress&cs=tinysrgb&w=300&lazy=load')),
    );
  }
}
