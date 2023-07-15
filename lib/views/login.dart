import 'package:firebase_auth/firebase_auth.dart';
import '../views/home.dart';
import '../views/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordHidden = true;
  bool _isFormValid = false;

  void _login(BuildContext context) async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: username, password: password);

      // Otentikasi berhasil, Anda dapat melakukan tindakan yang diinginkan,
      // misalnya menavigasi ke halaman beranda.
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
        (Route<dynamic> route) => false,
      );

      // Tampilkan pesan login berhasil
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login berhasil')),
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';
      if (e.code == 'user-not-found') {
        errorMessage = 'User not found. Please register an account.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Wrong password. Please try again.';
      } else {
        errorMessage = 'Login failed. Error: ${e.message}';
      }

      // Tampilkan dialog login gagal
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } catch (e) {
      // Tampilkan dialog login gagal
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Login failed. Error: $e'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  void _validateForm() {
    setState(() {
      _isFormValid =
          _usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "E-LIB LOGIN",
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: TextField(
                controller: _usernameController,
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
                controller: _passwordController,
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: (){},
                    // onPressed: _togglePasswordVisibility,
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
                        _login(context);
                      }
                    : null,
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 42, 76, 190),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
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
