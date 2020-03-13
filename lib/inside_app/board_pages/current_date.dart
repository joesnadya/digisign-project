import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class CurrentDate extends StatefulWidget {
  @override
  _CurrentDateState createState() => _CurrentDateState();
}

class _CurrentDateState extends State<CurrentDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: AppBar(
          backgroundColor: Color.fromRGBO(15, 213, 152, 1),
          elevation: 2,
          centerTitle: true,
          title: Text(
            'Current Date & Time',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: <Widget>[
          DateTimeForm(),
        ],
      ),
    );
  }
}

class DateTimeForm extends StatefulWidget {
  @override
  _DateTimeFormState createState() => _DateTimeFormState();
}

class City {
  int id;
  String name;

  City(
    this.id,
    this.name,
  );

  static List<City> getCities() {
    return <City>[
      City(
        1,
        'DKI Jakarta',
      ),
      City(
        2,
        'Bandung',
      ),
      City(
        3,
        'Gorontalo',
      ),
      City(
        4,
        'Ambon',
      ),
    ];
  }
}

class _DateTimeFormState extends State<DateTimeForm> {
  final TextEditingController controller = new TextEditingController();
  String result = '';
  List<City> _cities = City.getCities();
  List<DropdownMenuItem<City>> _dropdownMenuItems;
  City _selectedCity;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_cities);
    _selectedCity = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<City>> buildDropdownMenuItems(List cities) {
    List<DropdownMenuItem<City>> items = List();
    for (City city in cities) {
      items.add(
        DropdownMenuItem(
          value: city,
          child: Text(city.name),
        ),
      );
    }
    return items;
  }

  onChangedDropdownMenuItem(City selectedCity) {
    setState(() {
      _selectedCity = selectedCity;
    });
  }

  bool check = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Otomatis',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Checkbox(
                value: check,
                activeColor: Color.fromRGBO(15, 213, 152, 1),
                onChanged: (a) {
                  setState(() {
                    check = a;
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BasicDateField(),
                  SizedBox(
                    height: 24,
                  ),
                  Clock24Example(),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: Color.fromRGBO(15, 213, 152, 1),
                            fontSize: 20,
                            fontFamily: 'Georgia',
                          ),
                        ),
                        onPressed: () => formKey.currentState.save(),
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton(
                            child: Text(
                              'Reset',
                              style: TextStyle(
                                color: Color.fromRGBO(15, 213, 152, 1),
                                fontSize: 20,
                                fontFamily: 'Georgia',
                              ),
                            ),
                            onPressed: () => formKey.currentState.reset(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Pilih Kota:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: DropdownButton(
                    value: _selectedCity,
                    items: _dropdownMenuItems,
                    onChanged: onChangedDropdownMenuItem,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BasicDateField extends StatelessWidget {
  final format = DateFormat('dd-MM-yyy');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Tanggal',
        ),
        DateTimeField(
          format: format,
          onShowPicker: (context, currentValue) {
            return showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100),
            );
          },
        ),
      ],
    );
  }
}

class Clock24Example extends StatelessWidget {
  final format = DateFormat('HH:mm');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Waktu',
        ),
        DateTimeField(
          format: format,
          onShowPicker: (context, currentValue) async {
            final time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.fromDateTime(
                currentValue ?? DateTime.now(),
              ),
              builder: (context, child) => MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  alwaysUse24HourFormat: true,
                ),
                child: child,
              ),
            );
            return DateTimeField.convert(time);
          },
        ),
      ],
    );
  }
}
