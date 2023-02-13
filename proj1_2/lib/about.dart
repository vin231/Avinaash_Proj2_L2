import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneCallButton extends StatefulWidget {
  final String phoneNumber;

  PhoneCallButton({this.phoneNumber});

  @override
  _PhoneCallButtonState createState() => _PhoneCallButtonState();
}

class _PhoneCallButtonState extends State<PhoneCallButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => makePhoneCall(),
      child: Text('Call Us!'),
    );
  }

  void makePhoneCall() async {
    if (await canLaunch('tel:${widget.phoneNumber}')) {
      await launch('tel:${widget.phoneNumber}');
    } else {
      throw 'Could not launch ${widget.phoneNumber}';
    }
  }
}

class EmailButton extends StatefulWidget {
  final String email;

  EmailButton({this.email});

  @override
  _EmailButtonState createState() => _EmailButtonState();
}

class _EmailButtonState extends State<EmailButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => sendEmail(),
      child: Text('Email Us!'),
    );
  }

  void sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: widget.email,
    );

    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch ${emailLaunchUri.toString()}';
    }
  }
}


class AboutUs extends StatelessWidget {
  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
      context: context,
      child: AlertDialog(
        title: Text(message),
        content: Text(
            'Flag It PTE LTD \n\nV3.1.7k \n\nCopyright 2023, All Rights Reserved \n\nManaged by Nair Coders'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Ok'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Thank you for using Flag It!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                'We are commited to offering a good ride hailing for customers, so that they can get to their destinations with no hassle.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'This is app is part of the "My Smart City: Connecting Our Senses" offering commuters with an app to book rides right from their phone, allowing pick up right at their door-step rather than having to rush to a taxi pick-up point each time.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Our goal with this app is to provide a seamless and enjoyable experience for our users. We\'re constantly updating and improving our app to provide new features and fixes to any issues that arise. We appreciate your feedback and suggestions, so please don\'t hesitate to reach out to us.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Click the button for more information on this application!',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: ElevatedButton(
                    child: Text('Click Me!',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () => _showAlert(context, 'App Version'),
                  ),
                ),
              ),
            ),
            Container(
              width: 30,
            ),
            Container(
                child: PhoneCallButton(
              phoneNumber: '66665555',
            )
            ),
            Container(
              width: 30,
            ),
            Container(
              child: EmailButton(email: 'customerservice@flagit.com'),
            )
          ],
        )
      ],
    );
  }
}
