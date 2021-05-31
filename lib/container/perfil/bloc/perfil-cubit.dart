import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_sample/container/perfil/bloc/perfil-cubit-actions.dart';
import 'package:flutter_bloc_sample/container/perfil/bloc/perfil-cubit-model.dart';
import 'package:flutter_bloc_sample/container/perfil/models/pessoa-model.dart';

class PerfilCubit extends Cubit<PerfilCubitModel>
    implements PerfilCubitActions {
  PerfilCubit() : super(new PerfilCubitModel(pessoa: new Pessoa()));

  @override
  void mudarCargo(String cargo) {
    var pessoa = state.pessoa;
    pessoa?.cargo = cargo;

    emit(new PerfilCubitModel(pessoa: pessoa));
  }

  @override
  void mudarDataNascimento(String dataNascimento) {
    var pessoa = state.pessoa;
    pessoa?.dataNascimento = dataNascimento;

    emit(new PerfilCubitModel(pessoa: pessoa));
  }

  @override
  void mudarNome(String nome) {
    var pessoa = state.pessoa;
    pessoa?.nome = nome;

    emit(new PerfilCubitModel(pessoa: pessoa));
  }

  @override
  void buscarPessoas() {
    // SERVICE QUE BUSCA PESSOA
    emit(new PerfilCubitModel(
      pessoa: new Pessoa(
        nome: "Giuliano",
        cargo: "Corno master",
        dataNascimento: "10/11/2012"
      )
    ));
  }
}
