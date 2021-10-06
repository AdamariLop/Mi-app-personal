import 'package:flutter/material.dart';
import 'dart:async';

class LugaresPage extends StatefulWidget {
  @override
  _LugaresPageState createState() => _LugaresPageState();
}

class _LugaresPageState extends State<LugaresPage> {
  
  List<int> _listaNumeros = [1018,1040,109,11,122,129,142,158,164,17,171,191,193,195,197,206,212,238,249,274];

  bool _isLoading = false;

  ScrollController _scrollController = new ScrollController();

  // Método que se ejecuta al inicio
  @override
  void initState() { 
    super.initState();

    _scrollController.addListener(() {
      //print('Scrolleando');
      if(_scrollController.position.pixels == 
      _scrollController.position.maxScrollExtent){
        //_agregar10();
        obtenerData();
      }
    });
  }

  @override
  void dispose(){
    super.dispose();
    _scrollController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lugares favoritos'),
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
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index){ 
        final indice = _listaNumeros[index];
        return FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://picsum.photos/500/300/?image=$indice'),
        );
      },
    );
  }

  Future<Timer> obtenerData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);

    return new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
  }

  Widget _crearLoading() {
    if(_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}