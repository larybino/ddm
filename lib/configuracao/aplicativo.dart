import 'package:flutter/material.dart';
import 'package:flutter_10_4_wiggets/configuracao/rotas.dart';
import 'package:flutter_10_4_wiggets/widget/widget_categoria.dart';
import 'package:flutter_10_4_wiggets/widget/widget_cidade.dart';
import 'package:flutter_10_4_wiggets/widget/widget_cidade_lista%20.dart';
import 'package:flutter_10_4_wiggets/widget/widget_detalhes_cidade.dart';
import 'package:flutter_10_4_wiggets/widget/widget_estado.dart';
import 'package:flutter_10_4_wiggets/widget/widget_menu.dart';
import 'package:flutter_10_4_wiggets/widget/widget_pessoa.dart';
import 'package:flutter_10_4_wiggets/widget/widget_pessoa_lista.dart';
import 'package:flutter_10_4_wiggets/widget/widget_produto.dart';

class Aplicativo extends StatelessWidget{
  const Aplicativo({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Aula Widget',
        theme: ThemeData(primarySwatch: Colors.purple ),
        debugShowCheckedModeBanner: false,
        initialRoute: Rotas.home,
        routes: {
          Rotas.home : (context) => const WidgetMenu(),
          Rotas.produto : (context) => const WidgetProduto(),
          Rotas.pessoa : (context) =>  const WidgetPessoa(),
          Rotas.estado : (context) => const WidgetEstado(),
          Rotas.cidade : (context) => const WidgetCidade(),
          Rotas.categoria : (context) => const WidgetCategoria(),
          Rotas.pessoaLista : (context) => WidgetPessoaLista(),
          Rotas.cidadeLista : (context) =>  WidgetCidadeLista(),
          Rotas.cidadeDetalhe : (context) => WidgetCidadeDetalhe(),
          },
      );
    }
}