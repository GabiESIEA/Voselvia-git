import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'PageNav/HomeScreen.dart';
import 'PageNav/ActivitiesScreen.dart';
import 'PageNav/MessageScreen.dart';
import 'PageNav/ProfileScreen.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Liste des pages à afficher dans la navigation
  final List<Widget> _pages = [
    HomeScreen(),
    ActivitiesScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];

  // Fonction de navigation
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.shade800,
        gap: 8,
        padding: EdgeInsets.all(17),
        tabs: const [
          GButton(
            icon: FontAwesomeIcons.home,
            text: "Home",
          ),
          GButton(
            icon: FontAwesomeIcons.file,
            text: "Activities",
          ),
          GButton(
            icon: FontAwesomeIcons.message,
            text: "Message",
          ),
          GButton(
            icon: FontAwesomeIcons.user,
            text: "Profile",
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: _onItemTapped,
      ),
    );
  }
}



// Créez des classes similaires pour les autres pages (ActivitiesScreen, MessageScreen, ProfileScreen).
