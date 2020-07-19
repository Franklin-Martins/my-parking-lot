import 'package:flutter/material.dart';
import 'package:my_parking_lot/Home.dart';

import 'Rotas.dart';

final ThemeData temaPadrao =
    ThemeData(primaryColor: Color(0xff37474f), accentColor: Color(0xff546e7a));
void main() => runApp(MaterialApp(
      title: "SEMA",
      home: Home(),
      theme: temaPadrao,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: Rotas.gerarRotas,
    ));
