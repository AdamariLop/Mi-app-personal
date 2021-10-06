import 'package:flutter/material.dart';

class EducacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Educación'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg')
              //radius: 25.0,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget> [
          _cardKinder(context),
          SizedBox(height: 25.0),
          _cardPrimaria(context),
          SizedBox(height: 25.0),
          _cardSecundaria(context),
          SizedBox(height: 25.0),
          _cardPreparatoria(context),
          SizedBox(height: 30.0),
          _cardUniversidad(context),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardKinder(context){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.face, color: Colors.purple.shade100, size: 40.0),
            title: Text('Preescolar "Adelaida Guzman"'),
            subtitle: Text('Escuela del sector público, de nivel educativo Preescolar y de turno matutino.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              TextButton(
                child: Text('Ver foto'),
                onPressed: (){
                  _mostrarKinder(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _mostrarKinder(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context) { 
        return AlertDialog(
          title: Text('Preescolar Adelaida Guzman en Tequisquiapan, Qro.'),
          content: //Text('Contenido'),
            Image(
              image: AssetImage('assets/preescolar.JPG'),
              width: 50.0,
              fit: BoxFit.contain,
            ),
            actions: <Widget>[
              Column(
                children: [
                  
                ],
              ),
              TextButton(
                child: Text('Aceptar'),
                onPressed: () {
                  Navigator.of(context).pop();
                }
              ),
            ],
        );
      });
  }

  Widget _cardPrimaria(context){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.extension, color: Colors.purple.shade100, size: 40.0),
            title: Text('Primaria "Justo Sierra"'),
            subtitle: Text('Escuela del sector público, de nivel educativo Primaria y de turno vespertino.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              TextButton(
                child: Text('Ver foto'),
                onPressed: (){
                  _mostrarPrimaria(context);
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  void _mostrarPrimaria(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context) { 
        return AlertDialog(
          title: Text('Justo Sierra en San Juan del Río, Qro.'),
          content: //Text('Contenido'),
            Image(
              image: AssetImage('assets/primaria.JPG'),
              width: 50.0,
              fit: BoxFit.contain,
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Aceptar'),
                onPressed: () {
                  Navigator.of(context).pop();
                }
              ),
            ],
        );
      });
  }

  Widget _cardSecundaria(context){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.group, color: Colors.purple.shade100, size: 40.0),
            title: Text('Secundaria "Cerro de las Campanas"'),
            subtitle: Text('Escuela del sector público, de nivel educativo Secundaria y de turno matutino.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              TextButton(
                child: Text('Ver foto'),
                onPressed: (){
                  _mostrarSecundaria(context);
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  void _mostrarSecundaria(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context) { 
        return AlertDialog(
          title: Text('Cerro de las Campanas en Tequisquiapan, Qro.'),
          content: //Text('Contenido'),
            Image(
              image: AssetImage('assets/secundaria.JPG'),
              width: 50.0,
              fit: BoxFit.contain,
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Aceptar'),
                onPressed: () {
                  Navigator.of(context).pop();
                }
              ),
            ],
        );
      });
  }

  Widget _cardPreparatoria(context){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.home_work, color: Colors.purple.shade100, size: 40.0),
            title: Text('Preparatoria "CETIS No. 142"'),
            subtitle: Text('Título en Técnico en Ofimática.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              TextButton(
                child: Text('Ver foto'),
                onPressed: (){
                  _mostrarPrepa(context);
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  void _mostrarPrepa(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context) { 
        return AlertDialog(
          title: Text('CETIS No. 142 en Tequisquiapan, Qro.'),
          content: //Text('Contenido'),
            Image(
              image: AssetImage('assets/preparatoria.JPG'),
              width: 50.0,
              fit: BoxFit.contain,
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Aceptar'),
                onPressed: () {
                  Navigator.of(context).pop();
                }
              ),
            ],
        );
      });
  }

  Widget _cardUniversidad(context){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0)
      ),
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.school, color: Colors.purple.shade100, size: 40.0),
            title: Text('Universidad Tecnológica de San Juan del Río'),
            subtitle: Text('Título en TSU. en Tecnologías de la Información Área Desarrollo de Software Multiplataforma e ING. en Desarrollo y Gestión de Software.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              TextButton(
                child: Text('Ver foto'),
                onPressed: (){
                  _mostrarUni(context);
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  void _mostrarUni(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context) { 
        return AlertDialog(
          title: Text('UTSJR en San Juan del Río, Qro.'),
          content: //Text('Contenido'),
            Image(
              image: AssetImage('assets/universidad.JPG'),
              width: 50.0,
              fit: BoxFit.contain,
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Aceptar'),
                onPressed: () {
                  Navigator.of(context).pop();
                }
              ),
            ],
        );
      });
  }
}