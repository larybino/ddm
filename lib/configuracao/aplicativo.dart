import 'package:flutter/material.dart';
import 'package:flutter_10_4_wiggets/widget/widget_categoria.dart';
import 'package:flutter_10_4_wiggets/widget/widget_cidade.dart';
import 'package:flutter_10_4_wiggets/widget/widget_estado.dart';
import 'package:flutter_10_4_wiggets/widget/widget_menu.dart';
import 'package:flutter_10_4_wiggets/widget/widget_pessoa.dart';
import 'package:flutter_10_4_wiggets/widget/widget_produto.dart';

class Aplicativo extends StatelessWidget{
  const Aplicativo({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Aula Widget',
        theme: ThemeData(primarySwatch: Colors.blue ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/' : (context) => const WidgetMenu(),
          '/produto' : (context) => const WidgetProduto(),
          '/pessoa' : (context) => const WidgetPessoa(),
          '/estado' : (context) => const WidgetEstado(),
          '/cidade' : (context) => const WidgetCidade(),
          '/categoria' : (context) => const WidgetCategoria(),
          },
      );
    }
}