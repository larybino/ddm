import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Cidade'),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                  LabelText: 'Nome', hintText: 'Informe o nome da sua cidade')),
          TextFormField(
              decoration: InputDecoration(
                  LabelText: 'Sigla',
                  hintText: 'Informe a sigla da sua cidade')),
          ElevatedButton(
            onPressed: () {},
            child: Text('salvar'),
          ),
        ],
      )),
    );
  }
}
