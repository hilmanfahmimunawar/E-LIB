import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../views/get_started.dart';
import '../views/login.dart';
import '../views/register.dart';
import '../firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Perpus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetStartedPage(), // Ganti halaman beranda sesuai dengan kebutuhan
      routes: {
        '/start': (context) => const GetStartedPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => const RegisterPage(),
        // Tambahkan rute lain jika diperlukan
      },
    );
  }
}
