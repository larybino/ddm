import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget{
  const WidgetMenu({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/produto');
              },
              child: const Text('Produto'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pessoa');
              },
              child: const Text('Pessoa'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/estado');
              },
              child: const Text('Estado'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cidade');
              },
              child: const Text('Cidade'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/categoria');
              },
              child: const Text('Categoria'),
            ),
          ],
    );
  }
}