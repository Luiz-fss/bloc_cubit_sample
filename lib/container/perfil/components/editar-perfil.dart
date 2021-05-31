import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/perfil-cubit-model.dart';
import '../bloc/perfil-cubit.dart';

class EditarPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BlocProvider.value(
      value: ModalRoute.of(context)!.settings.arguments as PerfilCubit,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("EDITAR PERFIL"),
        ),
        body: new BlocBuilder<PerfilCubit, PerfilCubitModel>(
          builder: (context, state) => new ListView(
            children: [
              new Text("${state.pessoa?.nome}"),
              new MaterialButton(
                  child: new Text("MUDAR NOME"),
                  onPressed: () {
                    context.read<PerfilCubit>().mudarNome("Enzo Tiezzi");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
