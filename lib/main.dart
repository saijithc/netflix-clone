import 'package:flutter/material.dart';
import 'package:netflix/home.dart';
import 'package:netflix/indexchange.dart';
import 'package:netflix/splash.dart';

void main() async{
  await  Home.loadmovies();  
   
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const Splash() ,
    );
  }
}
