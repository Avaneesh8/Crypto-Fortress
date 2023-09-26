import 'package:cryptofortress/View/io.dart';
import 'package:cryptofortress/View/splash.dart';
import 'package:cryptofortress/provider/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (context) => AuthProvider(), // Initialize your AuthProvider
    child: const MyApp(),
  ),);
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IO(),
    );
  }
}
