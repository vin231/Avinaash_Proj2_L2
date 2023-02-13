import 'package:flutter/material.dart';
import 'package:proj1_2/payment.dart';
import 'package:proj1_2/rating.dart';
import 'global.dart';


class Driver extends StatefulWidget {
  @override
  _DriverState createState() => _DriverState();
}

class _DriverState extends State<Driver> {
  String _from = 'Current Location';
  String _to = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book a Ride'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('From'),
            subtitle: Text(_from),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          Divider(),
          ListTile(
            title: Text('To'),
            subtitle: Text(_to),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          Divider(),
          ListTile(
            title: Text('Date and Time'),
            subtitle: Text('Now'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
            },
          ),
          Divider(),

          Divider(),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rating()),
              );
            },
            child: Text('Book a Ride'),
          ),
        ],
      ),
    );
  }
}
