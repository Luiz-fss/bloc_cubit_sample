import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/perfil-cubit-model.dart';
import '../bloc/perfil-cubit.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BlocProvider(
      create: (context) => new PerfilCubit(),
      child: Scaffold(
        appBar: new AppBar(
          title: new Text("PERFIL"),
        ),
        body: new BlocBuilder<PerfilCubit, PerfilCubitModel>(
          builder: (context, state) {
            if(state.pessoa?.nome == null)
              return new ListView(
                children: [
                  new Text("Carregando..."),
                  new CupertinoButton(
                      child: new Text("Buscar perfil"),
                      onPressed: () {
                        context.read<PerfilCubit>().buscarPessoas();
                      }),
                ],
              );

            return new ListView(
              children: [
                new Text("${state.pessoa?.nome}"),
                new Text("${state.pessoa?.dataNascimento}"),
                new Text("${state.pessoa?.cargo}"),
                new CupertinoButton(
                    child: new Text("Mudar nome"),
                    onPressed: () {
                      context.read<PerfilCubit>().mudarNome("Enzo");
                    }),
                new CupertinoButton(
                    child: new Text("Mudar cargo"),
                    onPressed: () {
                      context.read<PerfilCubit>().mudarCargo("pedreiro");
                    }),
                new CupertinoButton(
                    child: new Text("Mudar nascimento"),
                    onPressed: () {
                      context
                          .read<PerfilCubit>()
                          .mudarDataNascimento("11//02/1995");
                    }),
                new CupertinoButton(
                    child: new Text("Buscar perfil"),
                    onPressed: () {
                      context.read<PerfilCubit>().buscarPessoas();
                    }),
                new MaterialButton(
                    child: new Text("TROCAR"),
                    onPressed: () {
                      Navigator.pushNamed(context, "/editar-perfil",
                          arguments: context.read<PerfilCubit>());
                    })
              ],
            );
          },
        ),
      ),
    );
  }
}
