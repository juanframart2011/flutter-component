import 'package:flutter/material.dart';
import 'package:flutter_component/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista(){

    print( menuProvider.opciones );

    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems(){

    return [
      ListTile(
        title: const Text('Alert Dialog'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: (){
          //Navigator.pushNamed(context, 'alert');
        },
      ),
      ListTile(
        title: const Text('Animated Container'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: (){
          //Navigator.pushNamed(context, 'animatedContainer');
        },
      ),
      ListTile(
        title: const Text('Card Widget'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: (){
          //Navigator.pushNamed(context, 'card');
        },
      ),
    ];
  }
}