import 'package:firebase_auth/firebase_auth.dart';
import '../login.dart';
import 'package:flutter/material.dart';

class Index3Page extends StatefulWidget {
  const Index3Page({Key? key}) : super(key: key);

  @override
  _Index3PageState createState() => _Index3PageState();
}

class _Index3PageState extends State<Index3Page> {
  String? email;

  @override
  void initState() {
    super.initState();
    getEmail();
  }

  void getEmail() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      email = user.email;
      print('Email: $email');
      // Perform any other actions you want with the user's email
    } else {
      print('User is not signed in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 200, horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 100,
              ),
              Text(
                'Hilman Fahmi Munawar',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              ),
              SizedBox(height: 20),
              Text("your email : ${email ?? ''}"),
              SizedBox(height: 20),
              Text('Member Since 2023'),
              SizedBox(height: 20),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut(); // Logout user
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 42, 76, 190),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
