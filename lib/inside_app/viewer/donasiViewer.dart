import 'package:flutter/material.dart';

class DonasiViewer extends StatefulWidget {
  @override
  _DonasiViewerState createState() => _DonasiViewerState();
}

class _DonasiViewerState extends State<DonasiViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: AppBar(
          backgroundColor: Color.fromRGBO(15, 213, 152, 1),
          elevation: 2,
          centerTitle: true,
          title: Text(
            'Donasi',
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(15, 213, 152, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 85,
          left: 85,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                bottom: 25,
              ),
              child: Text(
                'Scan QR Code untuk menyumbang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
