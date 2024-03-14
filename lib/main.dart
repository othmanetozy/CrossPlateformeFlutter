import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:testflutter/pages/consulting.page.dart';
import 'package:testflutter/pages/home.page.dart';
import 'package:testflutter/pages/products.page.dart';
import 'package:testflutter/pages/register.page.dart';
import 'package:testflutter/pages/review.page.dart';
import 'package:testflutter/pages/videocall.page.dart';
import 'package:testflutter/pages/Login.page.dart';


void main() async{
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(testApp());
}

class testApp extends StatelessWidget {
  const testApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/review": (context) => ReviewPage(),
        "/consulting": (context) => ConsultingPage(),
        "/products": (context) => ProductsPage(),
        "/videocall": (context) => VideocallPage(),
        "/login": (context) => LoginPage(
          onTap: (){},
        ),
        "/register": (context) => register(
          onTap: () {
            Navigator.pushNamed(context, '/login'); // Utilisez cette ligne pour naviguer vers la page de connexion
          },
        ),


      },
      //home: register(),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: const TextTheme(
            //bodyMedium: TextStyle(fontSize: 30, color: Colors.deepPurple),
            //bodyLarge: TextStyle(fontSize: 50, color: Colors.black),
            //bodySmall: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          iconTheme: IconThemeData(color: Colors.blueAccent, size: 30)),
    );
  }
}
