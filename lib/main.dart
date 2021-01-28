import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Center(
            child: Text(
              "My Profile",
              style: TextStyle(
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.4),
            ),
          ),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // put photo
        CircleAvatar(
          radius: 57,
          backgroundImage: AssetImage('images/image1.jfif'),
        ),
        // under photo
        Text(
          "Hunter",
          style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 3),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
              " is a Japanese manga series written and illustrated by Yoshihiro Togashi",
              style: TextStyle(fontFamily: 'Righteous')),
        ),
        SizedBox(
          width: 300,
          height:20 ,
          child: Divider(
            height: 20,
          ),
        ),
        RaisedButton(
            color: Colors.pink,
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: 'Righteous', fontWeight: FontWeight.bold),
            ),
            onPressed: () {}),
        SizedBox(
          height: 10,
        ),
        ListOfTexts(),
      ],
    );
  }
}

// list title
class ListOfTexts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //first row in column
        Row(
          children: [
          Expanded(
            child: ListTile(
                title: Text("  8825",style: TextStyle(fontFamily: 'Righteous'),),
                   subtitle: Text("Followers",style: TextStyle(fontFamily: 'Righteous'),),
                   ),
          ),
            Expanded(
              child: ListTile(
                title: Text("  1766",style: TextStyle(fontFamily: 'Righteous'),),
                subtitle: Text("Following",style: TextStyle(fontFamily: 'Righteous'),),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("     8.5",style: TextStyle(fontFamily: 'Righteous'),),
                subtitle: Text("Social score",style: TextStyle(fontFamily: 'Righteous'),),
              ),
            ),
          ],
        ),
        //second row in column
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text("  8825",style: TextStyle(fontFamily: 'Righteous'),),
                subtitle: Text("Followers",style: TextStyle(fontFamily: 'Righteous'),),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("  1766",style: TextStyle(fontFamily: 'Righteous'),),
                subtitle: Text("Following",style: TextStyle(fontFamily: 'Righteous'),),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("     8.5",style: TextStyle(fontFamily: 'Righteous'),),
                subtitle: Text("Social score",style: TextStyle(fontFamily: 'Righteous'),),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

