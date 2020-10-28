import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

//TODO implement MyClass to store the variable used in the CLass page
class MyClass {
  var name;
  var mail;
  var phone;
  var subject;

  //TODO implement constructor
  MyClass({this.name,this.mail,this.phone,this.subject});

  //TODO implement factory of MyClass
  factory MyClass.fromJson(Map<String, dynamic> json){
    return MyClass(
        name: json['name'],
        mail: json['mail'],
        phone: json['phone'],
        subject: json['subject'],
    );
  }
}

//TODO implement function to get data from server/api
Future<List<MyClass>> fetchMyClass() async {
  //TODO GET RESPONSE
  final response = await  http.get('http://192.168.1.100/php');
  //print('waiting response');
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    //var res = response.body;
    //print('successful response $res');
    //TODO STORE RESPONSE
    var jsondata = jsonDecode(response.body);
    //TODO CONVERTING JSON TO MYCLASS LIST
    List<MyClass> classList = [];
    for(var i in jsondata){
     classList.add(MyClass.fromJson(i));
    }
    //print('$classList[0]');
    //TODO RETURN MYCLASS LIST
    return classList;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    print('failed to get response');
    throw Exception('Failed to load Class');
  }
}

//TODO main class OF PAGE
class testbuilder extends StatefulWidget{
  @override
  buildState createState() => buildState();
}

//TODO IMPLEMENT CUSTOM WIDGET
class ClassWidget extends StatelessWidget{
  final name;
  final phone;
  final mail;
  final subject;

  ClassWidget({this.name,this.phone,this.mail,this.subject});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){Navigator.pushNamed(context, '/');},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(name, style: TextStyle(color: Colors.blue, fontSize: 20),),
                    //Text(phone, style: TextStyle(color: Colors.blue, fontSize: 20),),
                    //Text(mail, style: TextStyle(color: Colors.blue, fontSize: 20),),
                ],
              ),
            ),
            Text(subject, style: TextStyle(color: Colors.blue, fontSize: 20),),
            FlatButton(
              onPressed: (){ hoverColor: Colors.blue;},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue)
              ),
              child: Text('OPEN', style: TextStyle(color: Colors.blue, fontSize: 15),),
            ),
          ],
        ),
          SizedBox(height: 15.0,),
        ]
      ),
    );
  }
}

//TODO IMPLEMENT BUILD STATE
class buildState extends State<testbuilder> {
  Future<List<MyClass>> futureClass; //MyClass List variable declaration
  //TODO implement initState
  @override
  void initState() {
    super.initState();
    fetchClass(); //calling function fetchClass
    //print(futureClass);
  }

  //TODO implement fetch class
  void fetchClass() {
    //TODO set state when fetchMyClass() gets the data
    setState(() {
      futureClass = fetchMyClass();
    });
  }

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
        title: Text('BUILDER TEST'),
      ),
      drawer:  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Hezron Nelapati", style: TextStyle(fontSize: 18.0),),
              accountEmail: Text("nelapatihezron66@gmail.com", style: TextStyle(fontSize: 18.0),),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text("H", style: TextStyle(fontSize: 40.0),),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home", style: TextStyle(color: Colors.blueAccent, fontSize: 18,),),
              onTap: (){Navigator.pushNamed(context, '/home');},
            ),
            ListTile(
              leading: Icon(Icons.notification_important_outlined), title: Text("Hot Board", style: TextStyle(color: Colors.blueAccent, fontSize: 18,),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.group_outlined), title: Text("Faculty Finder", style: TextStyle(color: Colors.blueAccent, fontSize: 18,),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.developer_board_outlined), title: Text("About Us", style: TextStyle(color: Colors.blueAccent, fontSize: 18,),),
              onTap: (){},
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: futureClass,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  //print('name: $snapshot.data[index].name, phone: $snapshot.data[index].phone, mail: snapshot.data[index].mail, subject: snapshot.data[index].subject');
                  return ClassWidget(name: snapshot.data[index].name,
                      phone: snapshot.data[index].phone,
                      mail: snapshot.data[index].mail,
                      subject: snapshot.data[index].subject);
                }
            );
            //return ClassWidget(name: snapshot.data.name, phone: snapshot.data.phone, mail: snapshot.data.mail, subject: snapshot.data.subject);
          }
          else { //else{return Text('ERROR');}
            return Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [Center(child: CircularProgressIndicator())]);
          }
        },
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
 */

