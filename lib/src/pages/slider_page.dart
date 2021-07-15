import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              _crearSlider(),
              _checkBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen())
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: 'Tamaño de la imagen',
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: _bloquearCheck
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                  print(_valorSlider);
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://occ-0-1068-1722.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABRkEbFIM_K8hENt1nCabcWsHFuOUQ2XBEjTsHs_o_yqd_qtSMNTmeQyzi4sX5ZxalDF9HrUdS05PD60RO61Bx7u3lsqH.jpg?r=ea4'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (valor) {
    //       setState(() {
    //         _bloquearCheck = valor!;
    //       });
    //     });

    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor!;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }
}
