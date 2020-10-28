import 'package:flutter/material.dart';

class loginTest extends StatefulWidget{
  @override
  loginstate createState() => loginstate();
}

class loginstate extends State<loginTest>{
  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              UserBox,
              SizedBox(height: 5.0),
              passwordBox,
              SizedBox(height: 24.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [loginButton,],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //TODO implement logo
  final logo = Padding(
    padding: EdgeInsets.all(20.0),
    child: Hero(
      tag: 'Hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
        child: Image.asset("assets/images/logo.webp"),
       ),
     ),
  );

  //TODO implement Username Box
  final UserBox = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        autofocus: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
  );

  //TODO implement Password Box
  final passwordBox = Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    ),
  );

  //TODO implemnet Login Button
final loginButton = Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
  child: RaisedButton(
     shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(10.0),
     ),
  onPressed: () {},
    padding: EdgeInsets.all(10.0),
    color: Colors.lightBlueAccent,
    child: Text('Login', style: TextStyle(fontSize: 20,color: Colors.white),),
    ),
  );
}