import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
  
  Widget _cardTipo1() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: Colors.blue,
          width: 1.0,
        ),
      ),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Soy el Titulo'),
            subtitle: Text('Soy el subtitulo'),
            leading: Icon(Icons.photo_album, color: Colors.blue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          ),
        ]
      )
    );
  }
  
  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://vanguardia.com.mx/binrepository/1152x768/0c60/1152d648/down-right/11604/EALY/01-66_1-10085041_20241001203414.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          /*Image(
            image: NetworkImage('https://i.pinimg.com/564x/4c/0f/8d/4c0f8d1a2b3e5a7b9e6f1a2b3e5a7b9.jpg'),
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner aqui')
          ),
        ]
      )
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(2.0, 10.0),
            spreadRadius: 2.0,
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}