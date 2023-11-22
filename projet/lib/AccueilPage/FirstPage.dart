import 'package:flutter/material.dart';

import '../AccueilPage/SecondPage.dart';



class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                '         ',
                style: TextStyle(fontSize: 40.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.0),
              
                  child: Transform.scale(
                  scale: 2.3, // Vous pouvez ajuster ce facteur d'échelle selon vos besoins
                  child: Image.asset(
                    'images/recycler-telephone.png', // Remplacez par le chemin de votre image locale
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150.0),
              child: Text(
                '\nRecyclez,\nRéduisez,\nRecyclez.\n',
                
                style: TextStyle(fontFamily: 'Roboto',fontSize: 40.0,fontWeight: FontWeight.bold, color: Color(0xff48ac7c)),
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
                          'Commencer',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 26.5,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(180, 60),
                          textStyle: TextStyle(fontSize: 25, color: Colors.grey),
                          backgroundColor: Color(0xff48ac7c),
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