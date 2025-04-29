import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  static final pageName = 'avatar';
  static final pageRoute = '/avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: const Text('SL'),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text( 'SL'),
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: const NetworkImage('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2014/07/363612-avance-naruto-shippuden-uns-revolution.jpg'),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          fadeInDuration: const Duration(milliseconds: 200),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}