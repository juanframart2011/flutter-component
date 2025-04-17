import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{
  final opciones = ['Barcelona', 'Inter de Milan', 'PSG', 'Arsenal'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItemsCorta() {

    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: const Text('Subtitulo'),
            leading: const Icon(Icons.account_balance_wallet),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Hola mundo');
            },
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}