import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //Para poder utilizar estas variables se deben poner como
  //final para asegurar que despues no se cambien ya que ese
  //es el proposito del StatelessWidget que es no cambiar de estado
  final estiloTexto = const TextStyle(fontSize: 30);

  final conteo = 10;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // el scaffold es uno de los widgets basicos, para comezar a dibujar sobre el
    return Scaffold(
      appBar: AppBar(
        title: const Text('Titulo'),
        centerTitle: true,
        elevation: 400.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number of clicks:',
              style: estiloTexto,
            ),
            Text('0', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('la mundo');
          },
          child: const Icon(Icons.add)),
    );
  }
}
