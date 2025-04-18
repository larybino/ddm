import 'package:flutter/material.dart';
import 'package:flutter_10_4_wiggets/configuracao/rotas.dart';

class WidgetCidadeLista extends StatelessWidget {

  var cidades=[
    {'nome':'Salvdor', 'sigla':'ssa'},
    {'nome':'Bauru', 'sigla':'jtc'},
    {'nome':'Maringá', 'sigla':'mfg'}
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('Lista de cidades'), backgroundColor: Color.fromARGB(255, 243, 33, 219),),
      body: ListView.builder(
      itemCount: cidades.length,
      itemBuilder: (context, contador)=> ListTile(
        onTap: () => Navigator.pushNamed(context, Rotas.cidadeDetalhe),
        title: Text('${cidades[contador]['nome']}'),
        subtitle: Text('${cidades[contador]['sigla']} '),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: [
              IconButton(onPressed: (){Navigator.of(context).pushNamed(Rotas.cidade);}, icon: const Icon(Icons.edit), color: Colors.orange,),
              IconButton(onPressed: (){ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content: Text('Mensagem') ));}, icon: const Icon(Icons.delete), color: Colors.red,),
              ],
            ),
          ),
        ),
      ),
    );
  }

}