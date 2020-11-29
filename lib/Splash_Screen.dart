import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () => print("Splash Screen is completed"));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wb_incandescent_sharp, color: Colors.yellowAccent, size: 60.0),
                        Text('Glow Bulb', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   CircularProgressIndicator(),
                   Padding(
                     padding: EdgeInsets.only(top: 20.0),
                   ),
                   Text('Home Decore', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),)
                 ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
