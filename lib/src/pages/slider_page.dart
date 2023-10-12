import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
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
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearCheckbox(),
              _crearSwitch(),
              Expanded(child: _crearImagen()),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/564x/a8/c4/b5/a8c4b5491d2532fea68e13211fbd4b87.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //     value: _bloquearCheck,
    //     onChanged: (valor) => setState(() {
    //           _bloquearCheck = valor!;
    //         }));
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) => setState(() {
              _bloquearCheck = valor!;
            }));
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheck,
        onChanged: (valor) => setState(() {
              _bloquearCheck = valor;
            }));
  }
}
