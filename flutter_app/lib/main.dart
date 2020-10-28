import 'package:flutter/material.dart';
import 'package:flutter_app/assignments.dart';
import 'package:flutter_app/attendance.dart';
import 'package:flutter_app/listbuilder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app/testhome.dart';
import 'package:flutter_app/logintest.dart';
import 'package:flutter_app/marks.dart';
import 'package:flutter_app/class.dart';

void main() => runApp(MyApp());

//TODO implement MyApp
class MyApp extends StatefulWidget{
  @override
 _MyAppState createState() => _MyAppState();
}

//TODO implement MyApp State
class _MyAppState extends State<MyApp>{
  bool isLogged = false;

  //TODO implement initState and a function to check Login Status of the App
  @override
  void initState(){
    super.initState();
    checkIsLoggedIn();
  }

  //TODO implement checkIsLoggedIn function and set state of isLogged
  Future<void> checkIsLoggedIn() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool isLoggedIn = (pref.getBool('isLoggedIn') ?? false);
    if(isLoggedIn){
      setState(() {
        isLogged = true;
      });
    }
    else{
      setState(() {
        isLogged = false;
      });
    }
  }
  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    //TODO implment material app and decide which page to open
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLogged ? testbuilder() : home(),
      //TODO implement routes
      initialRoute: '/',
      routes: {
        '/home':(context) => home(),
        '/login':(context) => loginTest(),
        '/marks':(context) => Marks(),
        '/class':(context) => Class(),
        '/attendance':(context) => Attendance(),
        '/assignments':(context) => Assignments(),
        '/builder':(context)=> testbuilder(),
      },
    );
  }
}

/*
//TODO implement LoginPage
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold();
  }
}
*/

//TODO implement Homescreen
class HomePage extends StatelessWidget{
  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}