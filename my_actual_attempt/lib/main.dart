import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
)
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int karmaLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
                    child: Column(
                                  children: <Widget>[
                                    Center(
                                                    child: CircleAvatar(backgroundImage: AssetImage('assets/steve.png'),
                                                    radius: 90.0,
                                                    backgroundColor: Colors.grey,
                                                    foregroundColor: Colors.grey,
                                                  ),
                                    ),
                                                    Divider(
                                                      height: 50.0,
                                                      color: Colors.grey,
                                                    ),
                                                     Text(
                                                       'Name:',
                                                       style: TextStyle(
                                                         color: Colors.grey,
                                                         fontSize: 15.0,
                                                         letterSpacing: 2.0,
                                                       ),
                                                       ),
                                                       SizedBox(height: 10.0),
                                                       Text(
                                                       'Usman',
                                                       style: TextStyle(
                                                         color: Colors.yellow,
                                                         fontSize: 25.0,
                                                         letterSpacing: 2.0,
                                                       ),
                                                       ),
                                                       SizedBox(height: 30.0),
                                                       Text(
                                                       'Karma level:',
                                                       style: TextStyle(
                                                         color: Colors.grey,
                                                         fontSize: 15.0,
                                                         letterSpacing: 2.0,
                                                       ),
                                                       ),
                                                       SizedBox(height: 10.0),
                                                       Text(
                                                       '$karmaLevel',
                                                       style: TextStyle(
                                                         color: Colors.yellow,
                                                         fontSize: 25.0,
                                                         letterSpacing: 2.0,
                                                       ),
                                                       ),
                                                       SizedBox(height: 10.0),
                                                       Row(
                                                         children: <Widget>[
                                                                    Icon(
                                                                          Icons.mail,
                                                                          color: Colors.grey,
                                                                          ),
                                                                          SizedBox(width: 10.0),
                                                                          Text('Usmanfarooqwork@gmail.com',
                                                                              style: TextStyle(color: Colors.grey),
                                                                              )
                                                         ],
                                                       )
                                                       
                                                    ],
                                  crossAxisAlignment: CrossAxisAlignment.start,                  
                                  ),
                    ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            karmaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
        splashColor: Colors.yellow,
        ),
      appBar: AppBar(
        title: Text('ID App'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        ),
      backgroundColor: Colors.grey[900],
    );
  }
}