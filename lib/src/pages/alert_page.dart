import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas Page'),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 247, 247, 247),
            backgroundColor: Color.fromARGB(255, 4, 139, 76), // Color del fondo
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0), // Radio de los bordes
            ),
            padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding
            textStyle: TextStyle(
              fontSize: 18, // Tamaño del texto
              fontWeight: FontWeight.bold, // Negrita del texto
            ),
          ),
          onPressed: () => _mostarAlerta(context),
          child: Text('Mostrar Alerta'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text('Titulo'),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  16.0), // Ajusta el radio según tus preferencias
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de la alerta'),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Image.network(
                    'https://i.pinimg.com/736x/4a/cb/7b/4acb7b4f09b7da539fde95e657e10b75.jpg',
                    // width: 100.0, // Ancho de la imagen
                    // height: 100.0, // Alto de la imagen
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.red, // Color del texto
                  backgroundColor: Colors.white, // Color de fondo
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Ajusta el radio según tus preferencias
                  ),
                ),
                child: Text('Cancelar', style: TextStyle(color: Colors.blue)),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white, // Color del texto
                  backgroundColor: Colors.blue, // Color de fondo
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Ajusta el radio según tus preferencias
                  ),
                ),
                child: Text('Ok', style: TextStyle(color: Colors.white)),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }
}
