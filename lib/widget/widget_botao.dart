import 'package:flutter/material.dart';

class WidgetBotao estends StateLessWidget{
  final String rota;
  final String rotulo;
  WidgetBotao({required this.rota, required this rotulo})
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        Navigator.of(context).pushNamed(rota);
      },
      child: Text(rotulo),
    );
  }
}