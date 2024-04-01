import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBody() {
    switch (_selectedIndex) {
      case 0:
        return SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: Text(
                    'Acerca de mi', // Cambia esto por tu título
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CaviarDreams'),
                  ),
                ),
                SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style.copyWith(
                          color: Colors.black,
                        ),
                    children: const <TextSpan>[
                      TextSpan(
                          text:
                              'Apasionado desarrollador Front-End con un enfoque en la creación de soluciones web responsivas y atractivas. Comprometido con la excelencia en cada proyecto, mi objetivo es fusionar habilidades técnicas con creatividad para ofrecer una gran experiencia al usuario Con experiencia tanto en el desarrollo web como en el diseño de aplicaciones móviles, busco constantemente desafíos que me permitan expandir mis conocimientos y superar expectativas.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CaviarDreams')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/images/frame.png',
                    width: 150,
                  ),
                ),
              ],
            ),
          ),
        ));

      // Página de Perfil
      case 1:
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 130.0),
                child: Center(
                  child: Text(
                    ' ',
                    style: TextStyle(
                      fontSize: 24,
                    ),
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
                  style: TextStyle(fontSize: 30, fontFamily: 'Autography'),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 14),
                width: MediaQuery.of(context).size.width * 0.7,
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Card(
                      color: Color(0xFFE0F7FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: const ListTile(
                        leading: Icon(
                          Icons.phone_android_rounded,
                          color: Color.fromARGB(244, 32, 159, 168),
                        ),
                        title: Text('Telefono'),
                        subtitle: Text('1234567890'),
                      ),
                    ),
                    Card(
                      color: const Color(0xFFE0F7FA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: const EdgeInsets.only(bottom: 8.0),
                      child: const ListTile(
                        leading: Icon(Icons.email,
                            color: Color.fromARGB(244, 32, 159, 168)),
                        title: Text('Email'),
                        subtitle: Text('alejandro@example.com'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      default:
        return const Center(child: Text('Página no encontrada'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _getBody(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.navigate_next),
              label: 'Acerca de mi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Perfil',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.cyan,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
