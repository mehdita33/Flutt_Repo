import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade800,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade500,
          title: Text(
            'Business Card',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: business_card(),
      ),
    ),
  );
}

class business_card extends StatelessWidget {
  const business_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('images/mehdi.jpg'),
          ),
          Text(
            'Mehdi Taherpoor',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              color: Colors.white,
            ),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'SourceSansPro',
              color: Colors.white,
            ),
          ),
          Card(
            margin: EdgeInsets.all(15),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.blueGrey.shade900,
              ),
              title: Text(
                '+9821838342',
                style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(15),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.blueGrey.shade900,
              ),
              title: Text(
                'taherpoor.mehdi@yahoo.com',
                style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
