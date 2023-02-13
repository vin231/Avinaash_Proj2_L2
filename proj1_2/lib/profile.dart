import 'package:flutter/material.dart';
import 'global.dart';

class Profile extends StatefulWidget {
  const Profile({ Key key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            user.name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'Customer',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(user.userid),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(user.email),
          ),
        ],
      ),
    );
  }
}