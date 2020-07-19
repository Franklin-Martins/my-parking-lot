import 'package:flutter/material.dart';
import 'package:my_parking_lot/Cadastro.dart';
import 'package:my_parking_lot/Contratante.dart';
import 'package:my_parking_lot/UserUI.dart';
import 'Home.dart';

class Rotas {
  static Route<dynamic> gerarRotas(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Home());
      case "/cadastro":
        return MaterialPageRoute(builder: (_) => Cadastro());
      case "/tinicialuser":
        return MaterialPageRoute(builder: (_) => InterfaceUsuario());
      case "/contratante":
        return MaterialPageRoute(builder: (_) => Contratante());
      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada!"),
        ),
        body: Center(
          child: Text("Tela não encontrada"),
        ),
      );
    });
  }
}
