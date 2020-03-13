import 'package:flutter/material.dart';

class HomeViewer extends StatefulWidget {
  @override
  _HomeViewerState createState() => _HomeViewerState();
}

class _HomeViewerState extends State<HomeViewer> {
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
            'Home',
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(15, 213, 152, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/Mosque2.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(15, 213, 152, 1).withOpacity(.5),
                          Color.fromRGBO(15, 213, 152, 1).withOpacity(.5),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 30,
                          ),
                          child: Text(
                            'Kota Jakarta Timur',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 40,
                              ),
                              child: Text(
                                'Isya 19:28',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 5,
                              ),
                              child: Text(
                                '15 minutes to go',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 180,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 350,
                        height: 450,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[600],
                              blurRadius: 3,
                              spreadRadius: 0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 35,
                            right: 20,
                            left: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                    size: 40,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      'Hari ini / Selasa \n'
                                      '10 Maret 2020',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '_____________________________',
                                    ),
                                  ],
                                ),
                              ),
                              DataTable(
                                columns: [
                                  DataColumn(
                                    label: Text(
                                      'Jadwal',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      'Waktu',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                                rows: [
                                  DataRow(
                                    cells: [
                                      DataCell(
                                        Text(
                                          'Subuh',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '05:15',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  DataRow(
                                    cells: [
                                      DataCell(
                                        Text(
                                          'Dzuhur',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '12:06',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  DataRow(
                                    cells: [
                                      DataCell(
                                        Text(
                                          'Ashar',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '15:30',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  DataRow(
                                    cells: [
                                      DataCell(
                                        Text(
                                          'Maghrib',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '18:20',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  DataRow(
                                    cells: [
                                      DataCell(
                                        Text(
                                          'Isya',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '19:31',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 660,
                    bottom: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 30,
                            ),
                            child: Text(
                              'Daftar Khotib',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 320,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[600],
                                  blurRadius: 3,
                                  spreadRadius: 0,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 25,
                                right: 20,
                                left: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  DataTable(
                                    columns: [
                                      DataColumn(
                                        label: Text(
                                          'Nama Ustad',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'Tanggal',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              'Ustad A',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              '22/03/2020',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              'Ustad B',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              '09/04/2002',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              'Ustad C',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              '12/06/2020',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              'Ustad D',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              '24/06/2020',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1060,
                    bottom: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 30,
                            ),
                            child: Text(
                              'Pengumuman',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 220,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[600],
                                  blurRadius: 3,
                                  spreadRadius: 0,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 25,
                                right: 20,
                                left: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  DataTable(
                                    columns: [
                                      DataColumn(
                                        label: Text(
                                          'No.',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'Pengumuman',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              '1.',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              'pengumuman asdjasjl',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              '2.',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              'asdfghjkl',
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
