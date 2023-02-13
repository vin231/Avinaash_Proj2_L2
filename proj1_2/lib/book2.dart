import 'package:flutter/material.dart';
import 'driver.dart';
import 'global.dart';

class Places {
  final String _image;
  final String _name;
  final String _location;
  final String _describe;

  Places(this._image, this._name, this._location, this._describe);
}

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      itemCount: favs.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            favs[index].image,
            width: 130,
            height: 200,
            fit: BoxFit.fill,
          ),
          title: Text(
            favs[index].name,
            textAlign: TextAlign.center,
          ),
          subtitle: Text(
            favs[index].location,
            textAlign: TextAlign.center,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.explore),
                onPressed: () {
                  Places data = new Places(favs[index].image, favs[index].name,
                      favs[index].location, favs[index].describe);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondHome(data: data)),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class SecondHome extends StatefulWidget {
  final Places data;
  SecondHome({Key key, this.data}) : super(key: key);

  @override
  DetailsPage createState() => DetailsPage(data: data);
}

class DetailsPage extends State<SecondHome> {
  final Places data;
  DetailsPage({Key key2, this.data});

  @override
  int counter = 0;
  Color color = Colors.red;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data._name),
      ),
      body: Column(
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
                      MaterialPageRoute(builder: (context) => Driver()),
                    );
                  }))
        ],
      ),
    );
  }
}
