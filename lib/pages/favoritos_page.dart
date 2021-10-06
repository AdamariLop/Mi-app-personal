import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
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
          ListTile(
            leading: Icon(Icons.library_music, color: Colors.purple.shade800),
            title: Text('Música'),
          ),
          _cardOne(),
          SizedBox(height: 25.0),
          _cardFive(),
          SizedBox(height: 25.0),
          ListTile(
            leading: Icon(Icons.theaters, color: Colors.purple.shade800),
            title: Text('Cine'),
          ),
          _cardMarvel(),
          SizedBox(height: 25.0),
          _cardPixar(),
          SizedBox(height: 25.0),
          ListTile(
            leading: Icon(Icons.sports_esports, color: Colors.purple.shade800),
            title: Text('Videojuegos'),
          ),
          _cardCod(),
          SizedBox(height: 25.0),
          _cardFallguys(),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _cardOne() {
    final card = Container(
      child: Column(
        children: <Widget> [
          FadeInImage(
            image: NetworkImage('https://images.chicmagazine.com.mx/gtHtUTkAArhct7_YelvEYz0lWFc=/958x596/uploads/media/2020/07/23/one-direction-foto-cortesia_46_0_866_539.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 700),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '1D es una boy band británico-irlandesa formada en 2010 en Londres.',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
              ),
              ),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.deepPurple.shade100,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: card,
      ),
    );
  }

  Widget _cardFive() {
    final card = Container(
      child: Column(
        children: <Widget> [
          FadeInImage(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/0/00/5_Seconds_of_Summer.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 700),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '5SOS es una banda originaria de Sídney, Australia, de género pop rock, creada oficialmente en 2011.',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
              ),
              ),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.deepPurple.shade100,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: card,
      ),
    );
  }

  Widget _cardMarvel() {
    final card = Container(
      child: Column(
        children: <Widget> [
          FadeInImage(
            image: NetworkImage('https://media.vandal.net/m/10-2020/2020102013243495_1.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 700),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Marvel Studios es conocido por producir el Universo cinematográfico de Marvel, basado en los personajes de Marvel Comics.​',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
              ),
              ),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.deepPurple.shade100,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: card,
      ),
    );
  }

  Widget _cardPixar() {
    final card = Container(
      child: Column(
        children: <Widget> [
          FadeInImage(
            image: NetworkImage('https://as.com/meristation/imagenes/2021/05/07/reportajes/1620384805_885480_1620385025_noticia_normal_recorte1.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 700),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Pixar es un estudio cinematográfico de animación por computadora subsidario de Walt Disney Studios con sede en Emeryville, Estados Unidos.​',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
              ),
              ),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.deepPurple.shade100,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: card,
      ),
    );
  }

  Widget _cardCod() {
    final card = Container(
      child: Column(
        children: <Widget> [
          FadeInImage(
            image: NetworkImage('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/10/call-duty-mobile.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 700),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Call of Duty: Mobile es un juego tipo shooter desarrollado por Activision y TiMi Studios de Tencent Games para la plataforma de Android e IOS.',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
              ),
              ),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.deepPurple.shade100,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: card,
      ),
    );
  }

  Widget _cardFallguys() {
    final card = Container(
      child: Column(
        children: <Widget> [
          FadeInImage(
            image: NetworkImage('https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_FallGuysUltimateKnockout_image1600w.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 700),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Fall Guys: Ultimate Knockout es un videojuego de plataformas y battle royale desarrollado por Mediatonic y publicado por Devolver Digital.',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
              ),
              ),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.deepPurple.shade100,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: card,
      ),
    );
  }
}