import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

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
          child: Text('More'),
        ),
      ),
    );
  }
}
