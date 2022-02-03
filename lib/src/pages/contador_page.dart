import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

//En el nombre de esta clase de abajo usualmente se le pone al final el
//State para referirse que es el estado de la clase

class _ContadorPageState extends State<ContadorPage> {
  int _conteo = 0; // este variable se pone como una propiedad para poder
  //cambiarlo en

  void increase() {
    _conteo++;
    setState(() {});
  }

  void zero() {
    _conteo = 0;
    setState(() {});
  }

  void decrease() {
    _conteo--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    TextStyle _estiloTexto = const TextStyle(fontSize: 30);

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
              style: _estiloTexto,
            ),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      //lo que se manda es la referencia de la funcion increase
      //mas no la funcion como tal
      floatingActionButton: CustomFloatingActions(
          increaseFn: increase, decreaseFn: decrease, zeroFn: zero),
    );
  }
}

//Este widget se saca a parte del codigo principal para tener mas limpio el
//codigo y para que todo este modularizado y reutilizable
class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function zeroFn;

  const CustomFloatingActions(
      {Key? key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.zeroFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            onPressed: () => increaseFn(), child: const Icon(Icons.add)),
        FloatingActionButton(
            onPressed: () => zeroFn(), child: const Icon(Icons.exposure_zero)),
        FloatingActionButton(
            onPressed: () => decreaseFn(),
            child: const Icon(Icons.exposure_minus_1)),
      ],
    );
  }
}
