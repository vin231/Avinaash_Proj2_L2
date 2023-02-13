import 'package:flutter/material.dart';
import 'global.dart';

class Rating extends StatefulWidget {
  const Rating({ Key key }) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16),
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('images/superhero.jpg'),
          ),
          SizedBox(height: 16),
          Text(
            'Alan Ong',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'Driver',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('alanong'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('alanong@flagit.com'),
          ),
        ],
      ),
    );
  }
}