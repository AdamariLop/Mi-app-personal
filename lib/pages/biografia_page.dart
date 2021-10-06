import 'package:app_personal/pages/educacion_page.dart';
import 'package:flutter/material.dart';

class BiografiaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biografía'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/06/asgard-marvel.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: Alignment(0.0,2.5),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            Text(
              'Adamari López',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.purple.shade800,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 15),
            Text(
              '21 años',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black38,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 20),
            Text(
              '23 de Junio de 2000',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black38,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tequisquiapan, Qro.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ing. en Desarrollo y Gestión de Software',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => EducacionPage())
                );
              }, 
              child: Text('Ver educación'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple.shade300
              )
            )
          ],
        ),
      ),
    );
  }
}