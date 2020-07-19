import 'package:flutter/material.dart';

class InterfaceUsuario extends StatefulWidget {
  @override
  _InterfaceUsuarioState createState() => _InterfaceUsuarioState();
}

class _InterfaceUsuarioState extends State<InterfaceUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo Usuário"),
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
