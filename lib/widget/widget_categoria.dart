import 'package:flutter/material.dart';

class WidgetCategoria extends StatelessWidget {
  const WidgetCategoria({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Categoria'),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                  LabelText: 'Tipo', hintText: 'Informe o tipo de categoria')),
          ElevatedButton(
            onPressed: () {},
            child: Text('salvar'),
          ),
        ],
      )),
    );
  }
}
