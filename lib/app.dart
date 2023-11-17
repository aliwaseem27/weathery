import 'package:flutter/material.dart';

class WeatheryApp extends StatelessWidget {
  const WeatheryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Weathery"),
        ),
      ),
    );
  }
}
