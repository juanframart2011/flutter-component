import 'package:flutter/material.dart';
import 'dart:async';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = ScrollController();

  List<int> _opciones = [1, 2, 3, 4, 5];
  int _contador = 0;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _agregar();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        fetchData();
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
        title: const Text('Listas'),
      ),
      body: Stack(
        children: [
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }
  
  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: () => _onRefresh(),
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _opciones.length,
        itemBuilder: (context, index) {
          return _crearItem(index);
        },
      ),
    );
  }

  Future<Null> _onRefresh() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _opciones.clear();
      _contador++;
      _agregar();
    });

    return Future.delayed(duration);
  }
  
  Widget _crearItem(index) {
    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'),
      image: NetworkImage('https://picsum.photos/500/300?image=$index')
    );
  }

  void _agregar() {
    for (var i = 0; i < 10; i++) {
      _opciones.add(_contador++);
    }
    setState(() {});
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {});
    
    final duration = new Duration(seconds: 2);
    new Timer(duration, respuestaHTTP);
    return Future.delayed(duration);
  }

  void respuestaHTTP() {
    _isLoading = false;
    
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn
    );
    _agregar();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}