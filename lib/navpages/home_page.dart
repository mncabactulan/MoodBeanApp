import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green.shade700.withOpacity(0.8),
              Colors.green.shade500.withOpacity(0.8),
              Colors.green.shade300.withOpacity(0.8),
            ],
          ),
        ),
        child: const Center(
          child: Text('Insights'),
        ),
      ),
    );
  }
}
