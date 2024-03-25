import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('Hello World')),
            Center(
              child: Container(
                width: 100,
                height: 100,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipOval(
                    child: Image.network(
                      'https://i.pinimg.com/736x/e9/0a/d9/e90ad9089efcba98caee7728cb3cf9e5.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'Alejandro Figueroa',
              ),
            )
          ],
        ),
      ),
    );
  }
}
