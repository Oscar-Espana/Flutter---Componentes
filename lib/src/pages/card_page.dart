import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titulo'),
            subtitle: Text('Descripcion del item'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage(
                  'https://www.cose.ec/wp-content/uploads/2021/01/travel-landscape-01.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300,
              fit: BoxFit.cover),
          // Image(
          //   image: NetworkImage(
          //       'https://www.cose.ec/wp-content/uploads/2021/01/travel-landscape-01.jpg'),
          // ),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('Descripcion imagen'))
        ],
      ),
    );
  }
}
