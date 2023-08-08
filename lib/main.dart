import 'package:flutter/material.dart';
import 'package:instagram/screens/Activity_screen.dart';
import 'package:instagram/screens/Main_screen.dart';
import 'package:instagram/screens/addcontent_screen.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/profile_screen.dart';
import 'package:instagram/screens/search_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main_screen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/pattern.png"),
                repeat: ImageRepeat.repeat)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Center(
                child: Container(
                  width: 155,
                  height: 77,
                  child: Image(
                    image: AssetImage("images/Startlogo.png"),
                  ),
                ),
              ),
              Positioned(
                  bottom: 32,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "from",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "expertflutter",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
