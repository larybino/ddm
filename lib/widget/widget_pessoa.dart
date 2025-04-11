import 'package:flutter/material.dart';

class WidgetPessoa extends StatelessWidget {
  const WidgetPessoa({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pessoa'),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                  LabelText: 'Nome', 
                  hintText: 'Informe o nome'
            )
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('salvar'),
          ),
        ],
      )),
    );
  }
}
