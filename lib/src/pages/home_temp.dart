import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'seis',
    'siete',
    'ocho',
    'nueve',
    'diez',
    'once',
    'doce',
    'trece',
    'catorce'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes Temp'),
      ),
      //se crea la lista y se agregan lso titulos con un metodo
      body: ListView(children: _crearItermsCorto()),
    );
  }

  //el metodo devuelve una lista de widgets
  List<Widget> _crearIterms() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      //cada elemento qeu se agrega a al lista es un list title
      final tempWidget = ListTile(title: Text(opt));
      lista.add(tempWidget);
      lista.add(Divider(
        color: Colors.blueAccent,
        thickness: 2.0,
      ));
    }
    return lista;
  }

  List<Widget> _crearItermsCorto() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            subtitle: Text('Texto prueba'),
            title: Text(item),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          Divider(
            color: Colors.blueAccent,
            thickness: 2.0,
          ),
        ],
      );
    }).toList();
  }
}
