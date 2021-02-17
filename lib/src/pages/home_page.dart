import 'package:flutter/material.dart';
import 'package:preferenciausuario/src/shared_prefs/preferencias_usuario.dart';
import 'package:preferenciausuario/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.red : Colors.green,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: ${prefs.colorSecundario} '),
          Divider(),
          Text('Genero: ${prefs.genero}'),
          Divider(),
          Text('Nombre usuario  ${prefs.nombre}'),
          Divider(),
        ],
      ),
    );
  }
}
