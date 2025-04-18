import 'package:flutter/material.dart';
import 'package:flutter_10_4_wiggets/configuracao/rotas.dart';

class WidgetPessoa extends StatelessWidget {
  const WidgetPessoa({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pessoa'), backgroundColor: Color.fromARGB(255, 243, 33, 219),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'Nome', 
                  hintText: 'Informe o nome'
            )
          ),
          ElevatedButton(
            onPressed: () {Navigator.of(context).pushNamed(Rotas.pessoaLista);},
            child: Text('salvar'),
          ),
        ],
      )),
    );
  }
}
