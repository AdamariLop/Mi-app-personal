import 'package:app_personal/providers/menu_provider.dart';
import 'package:app_personal/utils/icono_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre mí'),
      ), 
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    //  Variable de retorno
    final List<Widget> opciones = [];

    //  Validamos que la data no venga nula o vacía
    if (data == null) {
      return[];
    }

    //  Usamos un ciclo para recorrer la data y generar los ListTiles
    data.forEach((item){
      final tempItem = ListTile(
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.purple
        ),
        onTap: () {
          /* final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route); */
          Navigator.pushNamed(context, item['ruta']);
        },
      );
      opciones.add(tempItem);
      opciones.add(Divider());
    });
    return opciones;
  }
}