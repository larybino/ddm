import 'package:flutter/material.dart';

class WidgetCidadeDetalhe extends StatelessWidget{

var cidades=[
    {'nome':'Salvdor', 'sigla':'ssa', 'habitantes': 3000000},
    {'nome':'Bauru', 'sigla':'jtc', 'habitantes': 500000},
    {'nome':'Maringá', 'sigla':'mfg', 'habitantes': 400000}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Cidade'), backgroundColor: Color.fromARGB(255, 243, 33, 219),
      ),
      body: ListTile(
        title: Text('${cidades[0]['nome']}'),
        subtitle: Text('${cidades[0]['sigla']} \n${cidades[0]['habitantes']} habitantes' ),
      ),
    );
  }


}