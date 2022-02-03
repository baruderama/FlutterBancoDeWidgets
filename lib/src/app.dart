import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/contador_page.dart';
import 'package:flutter_application_1/src/pages/home_page.dart';

//Se debe trabajar con stateleesWidgets debido a que carga mas rapido si
//se cargan widgets sin estado. los statefuls se utilizan en el lugar especifico
//del cambio de estado
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}
