import 'package:flutter/material.dart';
import '../AccueilPage/ThirdPage.dart';
import '../AccueilPage/FirstPage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double spaceFromBottom = 95; // Espace à partir du bas de l'écran

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40), // Espace de 40 pixels en haut

              // Image avec un facteur d'échelle
              Transform.scale(
                scale: 1.8, // Vous pouvez ajuster ce facteur d'échelle selon vos besoins
                child: Image.asset(
                  'images/recyclage2.png', // Remplacez par le chemin de votre image locale
                ),
              ),

              SizedBox(height: 110), // Espace de 110 pixels en haut
              Padding(
                padding: EdgeInsets.only(top: 50.0), // Pour centrer le texte
                child: Text(
                  'Agissez pour \n   la planète.',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Color(0xff48ac7c)),
                ),
              ),

              // Espace entre le texte et les boutons
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Bouton "Retour"
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => FirstPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = 0.0;
                                const end = 1.0;

                                var tween = Tween(begin: begin, end: end);

                                var fadeAnimation = animation.drive(tween);

                                return FadeTransition(
                                  opacity: fadeAnimation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Text('Retour',style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 26.5,
                            color: Colors.black,
                          ),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(180, 60),
                          textStyle: TextStyle(fontSize: 25, color: Colors.grey),
                          backgroundColor: Color(0xfff0fcec),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          
                        ),
                      ),
                      SizedBox(width: 20), // Espace de 20 pixels entre les boutons

                      // Bouton "Suivant"
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => ThirdPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const begin = 0.0;
                                const end = 1.0;

                                var tween = Tween(begin: begin, end: end);

                                var fadeAnimation = animation.drive(tween);

                                return FadeTransition(
                                  opacity: fadeAnimation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Text('Suivant',style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 26.5,
                          ),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(180, 60),
                          textStyle: TextStyle(fontSize: 25),
                          primary: Colors.white,
                          backgroundColor: Color(0xff48ac7c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
