import 'package:flutter/material.dart';

class ScannedDocumentPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(child: Image.asset('assets/images/profile_picture.gif')),
          Center(
            child: Text(
              "Akshay Galande",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          Text("DOCUMENT : PASSPORT"),
          Divider(),
          Text("LAST NAME : GALANDE"),
          Divider(),
          Text("FIRST NAME : AKSHAY"),
          Divider(),
          Text("COUNTRY : IND"),
          Divider(),
          Text("NATIONALITY : IND"),
          Divider(),
          Text("LAST NAME : GALANDE"),
          Divider(),
          Text("FIRST NAME : AKSHAY"),
          Divider(),
          Text("SEX : MALE"),
          Divider(),
          Text("DOB : 11/11/1997"),
          Divider(),
          RaisedButton(
            color: Colors.redAccent,
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(left: 40, right: 40, top: 12, bottom: 12),
              child: Text("Cancel"),
            ),
          )
        ],
      ),
    );
  }
}
