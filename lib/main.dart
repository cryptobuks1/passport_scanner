import 'package:flutter/material.dart';
import 'package:passport_scanner/camera.dart';

void main() => runApp(Home());

const String PLACE_YOUR_IMAGE_LIKE_THIS = "PLACE THE DOCUMENT LIKE THIS";
const String PREVIEW_IMAGE_PATH = "assets/images/how_to_scan_preview.jpeg";

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scan document"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
        ),
        body: ScanPreviewUI(),
      ),
    );
  }
}

class ScanPreviewUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              PLACE_YOUR_IMAGE_LIKE_THIS,
              style: TextStyle(color: Colors.redAccent, fontSize: 16),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset(PREVIEW_IMAGE_PATH),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: RaisedButton(
                color: Colors.black87,
                textColor: Colors.white,
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CameraScreen()));
                },
                child: Text("Start Scanning"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
