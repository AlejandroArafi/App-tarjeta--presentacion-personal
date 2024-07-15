import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPadding(
              padding: EdgeInsets.only(top: 130.0),
              child: Text(
                ' ',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            ProfilePicture(),
            Center(
              child: Text(
                'Alejandro Figueroa',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'CaviarDreams',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 80.0),
              child: Text(
                'Front end Developer',
                style: TextStyle(fontSize: 30, fontFamily: 'Autography'),
              ),
            ),
            ContactInfo(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigate_next),
            label: 'Acerca de',
          )
        ],
        currentIndex: 0,
        selectedItemColor: Colors.cyan,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/about');
          }
        },
      ),
    );
  }
}

class CustomPadding extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  const CustomPadding({Key? key, required this.child, required this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Center(child: child),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14),
      width: MediaQuery.of(context).size.width * 0.7,
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          CustomCard(
            icon: Icons.phone_android_rounded,
            title: 'Telefono',
            subtitle: '1234567890',
          ),
          CustomCard(
            icon: Icons.email,
            title: 'Email',
            subtitle: 'alejandro@example.com',
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const CustomCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFE0F7FA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Color.fromARGB(244, 32, 159, 168),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acerca de')),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 110.0),
                  child: Text(
                    'Acerca de mi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CaviarDreams',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style.copyWith(
                          color: Colors.black,
                        ),
                    children: const <TextSpan>[
                      TextSpan(
                        text:
                            'Apasionado desarrollador Front-End con un enfoque en la creación de soluciones web responsivas y atractivas. Comprometido con la excelencia en cada proyecto, mi objetivo es fusionar habilidades técnicas con creatividad para ofrecer una gran experiencia al usuario. Con experiencia tanto en el desarrollo web como en el diseño de aplicaciones móviles, busco constantemente desafíos que me permitan expandir mis conocimientos y superar expectativas.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CaviarDreams',
                          fontSize: 15,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Image.asset(
                    'assets/images/frame.png',
                    width: 150,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
