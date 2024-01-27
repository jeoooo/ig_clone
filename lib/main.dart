import 'package:flutter/material.dart';
import 'package:ig_clone/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,

      // uncomment to remove that top-right banner :D
      // debugShowCheckedModeBanner: false,
      title: 'Instagram clone frontend using Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
