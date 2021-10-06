import 'package:flutter/material.dart';

class HobbiesPage extends StatefulWidget {
  @override
  _HobbiesPageState createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {

  double _valorSlider = 100.0;
  double _valorSlider2 = 100.0;
  bool? _bloquearSlider = false;
  bool _bloquearSlider2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hobbies'),
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
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            Expanded(
              child: 
              _crearImagen(),
            ),
            _crearSlider2(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen2()
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.purple.shade200,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearSlider == true) ? null :
      (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: AssetImage('assets/escuchando.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearImagen2() {
    return Image(
      image: AssetImage('assets/leyendo.png'),
      width: _valorSlider2,
      fit: BoxFit.contain,
    );
  }

  Widget _crearSlider2() {
    return Slider(
      activeColor: Colors.purple.shade200,
      label: 'Tamaño de la imagen',
      value: _valorSlider2,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearSlider2 == true) ? null :
      (valor) {
        setState(() {
          _valorSlider2 = valor;
        });
      },
    );
  }

  Widget _crearCheckbox() {
    /* return Checkbox(
      value: _bloquearSlider,
      onChanged: (valor) {
        setState(() {
          _bloquearSlider = valor;
        });
      },
    ); */
    return CheckboxListTile(
      title: Text('Escuchar música'),
      value: _bloquearSlider,
      onChanged: (valor){
        setState(() {
          _bloquearSlider = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Leer'),
      value: _bloquearSlider2, 
      onChanged: (valor) {
        setState(() {
          _bloquearSlider2 = valor;
        });
      }
    );
  }
}