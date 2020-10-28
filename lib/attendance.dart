import 'package:flutter/material.dart';

class Attendance extends StatefulWidget{
  @override
  AttendanceState createState() => AttendanceState();
}

class AttendanceState extends State<Attendance> {
  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_rounded,),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Hezron Nelapati", style:TextStyle(fontSize: 18,),),
              accountEmail: Text("nelapatihezron66@gmail.com", style:TextStyle(fontSize: 18,),),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text("H", style: TextStyle(fontSize: 40.0),),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home", style: TextStyle(
                color: Colors.blueAccent, fontSize: 18,),),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.notification_important_outlined),
              title: Text("Hot Board", style: TextStyle(
                color: Colors.blueAccent, fontSize: 18,),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.group_outlined),
              title: Text("Faculty Finder", style: TextStyle(
                color: Colors.blueAccent, fontSize: 18,),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.developer_board_outlined),
              title: Text("About Us", style: TextStyle(
                color: Colors.blueAccent, fontSize: 18,),),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.cyan,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.home_rounded, color: Colors.blueAccent,),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },),
          ],
        ),
      ),
    );
  }
}
/*
  //TODO implement AppDrawer
  final appdrawer = Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Hezron Nelapati"),
          accountEmail: Text("nelapatihezron66@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text("H", style: TextStyle(fontSize: 40.0),),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home), title: Text("Home"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.notification_important_outlined), title: Text("Hot Board"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.group_outlined), title: Text("Faculty Finder"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.developer_board_outlined), title: Text("About Us"),
          onTap: (){},
        ),
      ],
    ),
  );

  //TODO implement bottom navigataion bar
  final bottomnav =  BottomAppBar(
    //color: Colors.cyan,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(icon: Icon(Icons.home_rounded,color: Colors.blueAccent,), onPressed: null,),
      ],
    ),
  );

 */