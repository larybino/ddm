import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Estado'),backgroundColor: Color.fromARGB(255, 243, 33, 219),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'Nome', 
                  hintText: 'Informe o nome do seu estado')),
          TextFormField(
              decoration: InputDecoration(
                  labelText: 'Sigla',
                  hintText: 'Informe a sigla do seu estado')),
          ElevatedButton(
            onPressed: () {},
            child: Text('salvar'),
          ),
        ],
      )),
    );
  }
}
