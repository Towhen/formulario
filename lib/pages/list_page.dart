import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class listPage extends StatelessWidget {
  static const String ROUTE = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listado"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              trailing: Icon(Icons.arrow_back),
            ),
            ListTile(
              trailing: Icon(Icons.add_alert),
            ),
            ListTile(
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              trailing: Icon(Icons.save),
            ),
            ListTile(
              trailing: Icon(Icons.accessible),
            ),
            ListTile(
              trailing: Icon(Icons.airline_seat_legroom_reduced),
            ),
            ListTile(
              trailing: Icon(Icons.ac_unit_outlined),
            ),
            ListTile(
              trailing: Icon(Icons.eleven_mp),
            ),
            ListTile(
              trailing: Icon(Icons.accessible_sharp),
            ),
            ListTile(
              trailing: Icon(Icons.ac_unit_outlined),
            ),
            ListTile(
              trailing: Icon(Icons.accessibility_rounded),
            ),
            ListTile(
              trailing: Icon(Icons.add_alert_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
