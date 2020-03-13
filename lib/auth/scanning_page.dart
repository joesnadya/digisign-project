import 'package:digisign/inside_app/viewer/navigationViewer.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ScanningPage extends StatefulWidget {
  @override
  _ScanningPageState createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 150,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(15, 213, 152, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Digisign',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Monotype Corsiva',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: Text(
                      'Silahkan scan QR code di masjid \n'
                      'terdekat untuk bisa melihat konten',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      right: 85,
                      left: 85,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        RaisedButton(
                          elevation: 1,
                          splashColor: Colors.blue,
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Color.fromRGBO(15, 213, 152, 1),
                          child: Text(
                            'Scan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Georgia',
                            ),
                          ),
                          onPressed: () async {
                            var navigationResult = await Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (context) => ViewerPage(),
                              ),
                            );
                            if (navigationResult == true) {
                              MaterialPageRoute(
                                builder: (context) => ViewerPage(),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  FlatButton(
                    color: Colors.white,
                    child: Text(
                      'Admin?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () async {
                      var navigationResult = await Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                      if (navigationResult == true) {
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
