import 'package:flutter/material.dart';
import 'package:flutter_10_4_wiggets/configuracao/rotas.dart';

class WidgetPessoaLista extends StatelessWidget {

  var pessoas=[
    {'nome':'Laryssa', 'telefone':'(44)99999-9999', 'url': 'https://cdn-icons-png.flaticon.com/512/4519/4519678.png'},
    {'nome':'Bruna', 'telefone':'(71)99999-9999', 'url': 'https://cdn-icons-png.flaticon.com/512/4519/4519678.png'},
    {'nome':'Mayra', 'telefone':'(14)99999-9999', 'url': 'https://cdn-icons-png.flaticon.com/512/4519/4519678.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('Lista de pessoas'), backgroundColor: Color.fromARGB(255, 243, 33, 219),),
      body: ListView.builder(
      itemCount: pessoas.length,
      itemBuilder: (context, contador)=> ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage('${pessoas[contador]['url']}'),),
        title: Text('${pessoas[contador]['nome']}'),
        subtitle: Text('${pessoas[contador]['telefone']}'),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(onPressed: (){Navigator.of(context).pushNamed(Rotas.pessoa);}, icon: const Icon(Icons.edit), color: Colors.orange,),
              IconButton(onPressed: (){ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content: Text('Mensagem') ));}, icon: const Icon(Icons.delete), color: Colors.red,),
              ],
            ),
          ),
        ),
      ),
    );
  }

}