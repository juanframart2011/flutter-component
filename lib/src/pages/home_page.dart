import 'package:flutter/material.dart';
import 'package:flutter_component/src/pages/alert_page.dart';
import 'package:flutter_component/src/providers/menu_provider.dart';
import 'package:flutter_component/src/utils/icono_string_util.dart';

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

    //print( menuProvider.opciones );
    /*menuProvider.cargarData().then((opciones) {
      print('Opciones: $opciones');
    });*/

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems( snapshot.data!, context ),
        );
      },
    );

    /*return ListView(
      children: _listaItems(),
    );*/
  }

  List<Widget> _listaItems( List<dynamic> data, context ){

    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text( opt['texto'] ),
        subtitle: Text( opt['ruta'] ),
        leading: getIcon(opt['icon']),
        trailing: const Icon( Icons.keyboard_arrow_right, color: Colors.blue ),
        onTap: (){
          final routeName = opt['ruta'];
          Navigator.pushNamed(context, routeName);
        },
      );

      opciones..add( widgetTemp )..add( Divider() );      
    });

    return opciones;
  }
}