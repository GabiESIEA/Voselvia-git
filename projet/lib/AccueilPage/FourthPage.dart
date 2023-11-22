import 'package:flutter/material.dart';
import '../HomePage/homepage.dart';
import '../Screens/Login/login_screen.dart';
import '../Screens/Welcome/welcome_screen.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                '         ',
                style: TextStyle(fontSize: 40.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0), 
              child: Transform.scale(
                scale: 1.8, // Vous pouvez ajuster ce facteur d'échelle selon vos besoins
                child: Image.asset(
                  'images/recyclage4.png', // Remplacez par le chemin de votre image locale
                ),
              ),
              ),

              SizedBox(height: 65.0),
              
              Align(
                alignment: Alignment.center, // Pour centrer le texte
                child: Text(
                  "\n  Explorez, recyclez,\n récompensez-vous.\n\n ",
                  style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold, color: Color(0xff45ac7a)),
                ),
              ),
              
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      ElevatedButton(
                        onPressed:(){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => WelcomeScreen(),
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
                        child: Text('Commencer'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(180, 60),
                          textStyle: TextStyle(fontSize: 25, color: Colors.grey),
                          backgroundColor: Color(0xff45ac7a),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),                   
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}