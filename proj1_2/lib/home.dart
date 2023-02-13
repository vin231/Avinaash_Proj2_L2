import 'package:flutter/material.dart';
import 'global.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({ Key key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'images/map.jpg',
                width: 400,
              ),
            ),
            Container(
              child: Text(
                user.name,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}