import 'package:flutter/material.dart';

class WidgetCategoria extends StatelessWidget {
  const WidgetCategoria({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Categoria'), backgroundColor: Color.fromARGB(255, 243, 33, 219),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'Tipo', hintText: 'Informe o tipo de categoria')),
          ElevatedButton(
            onPressed: () {},
            child: Text('salvar'),
          ),
        ],
      )),
    );
  }
}
