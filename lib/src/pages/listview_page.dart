import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNUmeros = [10, 20, 30, 40, 50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Listas')), body: _crearLista());
  }

  Widget _crearLista() {
    return ListView.builder(
        itemCount: _listaNUmeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNUmeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          );
        });
  }
}
