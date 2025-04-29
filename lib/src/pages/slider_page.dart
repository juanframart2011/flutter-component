import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheck(),
            _crearSwitch(),
            Expanded(
              child: _bloquearCheck
                  ? Container()
                  : Divider(),
            ),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(_bloquearCheck ? Icons.check : Icons.check_box_outline_blank),
        onPressed: () {
          setState(() {
            _bloquearCheck = !_bloquearCheck;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearCheck() {
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
  
  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
  
  _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }
  
  _crearImagen() {
    return Image(
      image: NetworkImage('https://images.justwatch.com/backdrop/317053028/s1920/solo-leveling.avif'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}