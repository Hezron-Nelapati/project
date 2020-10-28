import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class home extends StatefulWidget{
  @override
  _testhomeState createState() => _testhomeState();
}

class _testhomeState extends State<home> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,DeviceOrientation.landscapeLeft,
    ]);
    super.dispose();
  }
  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    final Msize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
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
              title: Text("Home", style: TextStyle(color: Colors.blueAccent, fontSize: 18,),),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.notification_important_outlined),
              title: Text("Hot Board", style: TextStyle(color: Colors.blueAccent, fontSize: 18,),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.group_outlined),
              title: Text("Faculty Finder", style: TextStyle(color: Colors.blueAccent, fontSize: 18,),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.developer_board_outlined),
              title: Text("About Us", style: TextStyle(color: Colors.blueAccent, fontSize: 18,),),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white10,
        height: Msize.height,
        width: Msize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //TODO implement rowOne
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF42A5F5),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/builder');
                    },
                    child: Text(
                      'CLASS', style: TextStyle(color: Colors.white, fontSize: 18,),),
                  ),
                ),

                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF42A5F5),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/attendance');
                    },
                    child: Text(
                      'ATTENDANCE', style: TextStyle(color: Colors.white, fontSize: 18,),),
                  ),
                ),
              ],
            ),
            //TODO implement rowTwo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF42A5F5),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/assignments');
                    },
                    child: Text(
                      'ASSIGNMENT', style: TextStyle(color: Colors.white, fontSize: 18,),),
                  ),
                ),

                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF42A5F5),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/marks');
                    },
                    child: Text(
                      'MARKS', style: TextStyle(color: Colors.white, fontSize: 18,),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.white10,
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
            backgroundColor: Colors.amberAccent,
            child: Text("H", style: TextStyle(fontSize: 40.0),),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home), title: Text("Home"),
          onTap: (){Navigator.pushNamed(context, '/home');},
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

 */
