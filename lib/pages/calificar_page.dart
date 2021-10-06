import 'package:flutter/material.dart';

class CalificarPage extends StatefulWidget {
  @override
  _CalificarPageState createState() => _CalificarPageState();
}

class _CalificarPageState extends State<CalificarPage> {

  double _valorSlider = 0;
  String _nombre = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calificar App'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.photo_filter, color: Colors.white)
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Del 1 al 10, evalúa la aplicación',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 45.0),
            _crearSlider(),
            SizedBox(height: 30.0),
            Text(
              'Datos del usuario',
                style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w200
              ),
            ),
            SizedBox(height: 20.0),
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            ElevatedButton(
              onPressed: () {}, 
              child: Text('Enviar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple.shade300
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.purple.shade700,
        inactiveTrackColor: Colors.purple.shade100,
        trackShape: RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: Colors.purpleAccent,
        overlayColor: Colors.purple.withAlpha(32),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: RoundSliderTickMarkShape(),
        activeTickMarkColor: Colors.purple.shade700,
        inactiveTickMarkColor: Colors.purple.shade100,
        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: Colors.purpleAccent,
        valueIndicatorTextStyle: TextStyle(
          color: Colors.white
        ),
      ), 
      child: Slider(
        value: _valorSlider,
        min: 0,
        max: 10,
        divisions: 10,
        label: '$_valorSlider',
        onChanged: (value) {
          setState(() {
            _valorSlider = value;
          });
        },
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Nombre del usuario',
        labelText: 'Nombre:',
        helperText: 'Solo es el nombre de la persona',
        suffixIcon: Icon(Icons.person),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
        //print(_nombre);
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Correo Electrónico',
        labelText: 'E-Mail:',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
        //print(_nombre);
      },
    );
  }
}