import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            const Center(
              child: Text(
                'Hello World',
                style: TextStyle(
                  fontFamily: 'Autography',
                ),
              ),
            ),
            Center(
              child: Container(
                width: 150,
                height: 150,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.cyan, width: 3.0),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/IMG_7364.JPG',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'Alejandro Figueroa',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'CaviarDreams',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 80.0),
              child: Text(
                'Front end Developer',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Autography',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 14),
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListView(
                shrinkWrap:
                    true, // Importante para usar ListView dentro de otro scrollable como Column
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Card(
                    color: Colors.cyan[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(bottom: 8.0),
                    child: const ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text('Telefono'),
                      subtitle: Text('1234567890'),
                    ),
                  ),
                  Card(
                    color: Colors.cyan[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: EdgeInsets.only(bottom: 8.0),
                    child: const ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Email'),
                      subtitle: Text('alejandro.arafi@gmail.com'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
