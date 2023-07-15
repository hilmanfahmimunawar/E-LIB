import 'package:firebase_auth/firebase_auth.dart';
import '../views/home.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isPasswordHidden = true;
  bool _isFormValid = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  void _validateForm() {
    setState(() {
      _isFormValid = nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          passwordController.text.length >= 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Color.fromARGB(255, 42, 76, 190),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "E-LIB SIGN UP",
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Nama Lengkap',
                ),
                onChanged: (_) => _validateForm(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
                onChanged: (_) => _validateForm(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: TextField(
                controller: passwordController,
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: _togglePasswordVisibility,
                    icon: Icon(
                      _isPasswordHidden
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
                onChanged: (_) => _validateForm(),
              ),
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: _isFormValid
                    ? () {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text)
                            .then((value) {
                          print("Created new Account");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                      }
                    : null,
                child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
