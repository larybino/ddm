import 'package:flutter/material.dart';
import 'package:flutter_10_4_wiggets/configuracao/rotas.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Cidade'),backgroundColor: Color.fromARGB(255, 243, 33, 219),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'Nome', hintText: 'Informe o nome da sua cidade')),
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'Sigla',
                  hintText: 'Informe a sigla da sua cidade')),
          ElevatedButton(
            onPressed: () {Navigator.of(context).pushNamed(Rotas.cidadeLista);},
            child: Text('salvar'),
          ),
        ],
      )),
    );
  }
}
