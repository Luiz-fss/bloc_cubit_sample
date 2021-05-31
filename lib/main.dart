import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'container/perfil/bloc/perfil-cubit.dart';
import 'container/perfil/components/editar-perfil.dart';

import 'container/perfil/components/perfil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Perfil(),
      routes: {"/editar-perfil": (context) => new EditarPerfil()},
    );
  }
}
