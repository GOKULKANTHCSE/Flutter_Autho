import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:training/Widgets/appsplash.dart';
import 'package:training/firebase_options.dart';

void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(InstaApp());
}

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pinkAccent,
      ),
      home: Autho(),
    );
  }
}