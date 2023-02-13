import 'package:flutter/material.dart';
import 'package:proj1_2/main.dart';
import 'home.dart';
import 'global.dart';
import 'signup2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final userCont = TextEditingController();
  final passwordCont = TextEditingController();

  String passwordError;
  String userError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 280.0,
                width: 280.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/login_bg.jpg'),
                  ),
                ),
              ),
              Text(
                'Flag It!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              if (userError != null)
                Text(
                  userError,
                  style: TextStyle(color: Colors.red),
                ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[200],
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: userCont,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'User ID',
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              if (passwordError != null)
                Text(
                  passwordError,
                  style: TextStyle(color: Colors.red),
                ),

              SizedBox(height: 20),
              //Password textfeild
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[200],
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      controller: passwordCont,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 50),

              RaisedButton(
                onPressed: () {
                  var userData = user.getUserData();
                  if (userData[0] == userCont.text &&
                      userData[1] == passwordCont.text) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyStatefulWidget()),
                    );
                  }

                  if (user.userid != userCont.text) {
                    setState(() {
                      userError = 'Incorrect Username';
                    });
                  }
                  if (user.pwd != passwordCont.text) {
                    setState(() {
                      passwordError = 'Incorrect Password';
                    });
                  }
                },
                textColor: Colors.black,
                color: Colors.blue,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              SizedBox(height: 10),

              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    elevation: 5,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Text(
                      "Sign Up Now!",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
