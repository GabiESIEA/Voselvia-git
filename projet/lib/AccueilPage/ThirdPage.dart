import 'package:flutter/material.dart';
import '../AccueilPage/SecondPage.dart';
import '../AccueilPage/FourthPage.dart';

class ThirdPage extends StatelessWidget {
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
                  scale: 1.8, 
                  child: Image.asset(
                    'images/recyclage3.png', 
                  ),
                ),
              ),
              
              SizedBox(height: 95.0),

              Align(
                alignment: Alignment.center, 
                child: Text(
                  "\nRecyclez n'a jamais\n  été aussi simple. \n\n ",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Color(0xff48ac7c)),
                ),
              ),
              
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
                              pageBuilder: (context, animation, secondaryAnimation) => SecondPage(),
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
                        child: Text(
                          'Retour',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 26.5,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(180, 60),
                          textStyle: TextStyle(fontSize: 25, color: Colors.grey),
                          backgroundColor: Color(0xfff0fcec),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(width: 20), 

                      // Bouton "Suivant" avec effet de fondu
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => FourthPage(),
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
                        child: Text(
                          'Suivant',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 26.5,
                          ),
                        ),
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
