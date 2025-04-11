import 'package:flutter/material.dart';

import 'widget_botao.dart';

class WidgetMenu extends StatelessWidget{
  const WidgetMenu({key}) : super(key: key);

  Widget criarBotao(BuildContext context, String rotulo, String rota){
    return ElevatedButton(
      onPressed: (){
        Navigator.of(context).pushNamed(rota);
      },
      child: Text(rotulo),
    )
  }
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            criarBotao(context, 'cadastro de estado', Rotas.Estado),
            WidgetBotao(rota: Rotas.cidade, rotulo: 'Cadastro de cidade',),
            criarBotao(context, 'cadastro de cidade', Rotas.Cidade),
            criarBotao(context, 'cadastro de pessoa', Rotas.Pessoa),
            criarBotao(context, 'cadastro de produto', Rotas.Produto),
            criarBotao(context, 'cadastro de categoria', Rotas.Categoria),
          ],
    );
  }
}