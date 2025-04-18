import 'package:flutter/material.dart';

class WidgetProduto extends StatelessWidget {
  const WidgetProduto({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Produto'), backgroundColor: Color.fromARGB(255, 243, 33, 219),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'Tipo',
                  hintText: 'Informe o tipo do seu produto')),
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'produto',
                  hintText: 'Informe qual é o seu produto')),
          ElevatedButton(
            onPressed: () {},
            child: Text('salvar'),
          ),
        ],
      )),
    );
  }
}
