import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: GadoCard(),
    ),
  );
}

class GadoCard extends StatefulWidget {
  const GadoCard({Key? key}) : super(key: key);

  @override
  State<GadoCard> createState() => _GadoCardState();
}

class _GadoCardState extends State<GadoCard> {
  int flutterLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Gado ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flutterLevel = flutterLevel + 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Nats.jpeg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.blueGrey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 1.8,
              ),
            ),
            SizedBox(height: 9.5),
            Text(
              'Athanasius',
              style: TextStyle(
                fontSize: 27,
                color: Colors.yellowAccent[100],
                letterSpacing: 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 29.0),
            Text(
              'CURRENT FLUTTER LEVEL',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 1.8,
              ),
            ),
            SizedBox(height: 9.5),
            Text(
              '$flutterLevel',
              style: TextStyle(
                fontSize: 27,
                color: Colors.yellowAccent[100],
                letterSpacing: 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 29.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email_rounded,
                  color: Colors.blueGrey[300],
                  size: 25,
                ),
                SizedBox(
                  width: 9.0,
                ),
                Text(
                  'athanasiusgadosey@gmail.com',
                  style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 15.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
