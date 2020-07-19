import 'package:flutter/material.dart';

class Contratante extends StatefulWidget {
  @override
  _ContratanteState createState() => _ContratanteState();
}

class _ContratanteState extends State<Contratante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo Contratante"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Perfil'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Histórico de Alugueis'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Reputação'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "QR CODE AQUI",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
