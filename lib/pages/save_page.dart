import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  static const String ROUTE = "/save";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guardar"),
      ),
      body: Container(
        child: _FormSave(),
      ),
    );
  }
}

class _FormSave extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  final titleContoller = TextEditingController();
  final conteContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: titleContoller,
              validator: (value) {
                if (value.isEmpty) {
                  return "Tiene que colocar informacion";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Titulo",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: conteContoller,
              maxLines: 8,
              maxLength: 1000,
              validator: (value) {
                if (value.isEmpty) {
                  return "Tiene que colocar informacion";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Contenido",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            RaisedButton(
              child: Text("Guardar"),
              onPressed: () {
                if (_formkey.currentState.validate()) {
                  print("Guardando: " + titleContoller.text);
                  print("Guardando: " + conteContoller.text);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
