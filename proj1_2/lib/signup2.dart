import 'package:flutter/material.dart';
import 'global.dart';
import 'login.dart';

final fieldText = TextEditingController(); // clear textfeild
final TextEditingController idTEC = TextEditingController();
final TextEditingController emailController = TextEditingController(); //stores input
final TextEditingController passwordController = TextEditingController();
final TextEditingController nameController = TextEditingController();

regProcess(context) {
  final email = emailController.text;
  final userid = idTEC.text; //push into variable
  final pwd = passwordController.text;
  final name = nameController.text;

  user.userid = userid;
  user.email = email;
  user.pwd = pwd;
  user.name = name;

  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ));
}

class Signup extends StatefulWidget {
  const Signup({key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>(); // Key for form
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
              ),
              Text(
                'Register Here!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'Invalid email address';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: idTEC,
                  decoration: InputDecoration(labelText: 'User ID'),
                  validator: (value) {
                    if (value.isEmpty || !value.contains('')) {
                      return 'Invalid User ID';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value.isEmpty || !value.contains('')) {
                      return 'Invalid Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (value) {
                    if (value.isEmpty || value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    regProcess(context);
                  }
                },
                child: Text('Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
