import 'package:flutter/material.dart';
import 'package:movies_app/moives/presentaion/screens/movies_screen.dart';

import 'core/servecies/services_locator.dart';

void main() {
  ServicesLocator().init();
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MoviesScreen(),
    );
  }
}
