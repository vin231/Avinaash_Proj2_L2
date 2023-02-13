import 'package:flutter/material.dart';
import 'global.dart';
import 'rating.dart';

class Places {
  final String _image;
  final String _name;
  final String _location;
  final String _describe;

  Places(this._image, this._name, this._location, this._describe);
}

class Payment extends StatefulWidget {
  final Places data;
  Payment({Key key, this.data}) : super(key: key);
  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
    final Places data;
  _PaymentState({Key key2, this.data});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(data._name,
                style: TextStyle(color: Colors.blue, fontSize: 40)),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(data._location,
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25)),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(data._image),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(data._describe,
                style: TextStyle(color: Colors.brown, fontSize: 15)),
          ),
          Align(
              alignment: Alignment.center,
              child: RaisedButton(
                  color: Colors.blueAccent,
                  child: Text(
                    'Flag a Ride',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Rating()),
                    );
                  }))
        ],
      );
  }
}