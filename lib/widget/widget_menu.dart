import 'package:flutter/material.dart';
import 'package:flutter_10_4_wiggets/configuracao/rotas.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget criarMenu({required IconData icone,required String rotulo,required String rota}){
      return ListTile(
        leading: Icon(icone),
        title: Text(rotulo),
        onTap: () => Navigator.pushNamed(context, rota),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Principal'), backgroundColor: Color.fromARGB(255, 243, 33, 219),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 243, 33, 219)),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            criarMenu(icone: Icons.map, rotulo: 'Cadastro de Estado', rota: Rotas.estado),
            criarMenu(icone: Icons.location_city, rotulo: 'Cadastro de Cidade', rota: Rotas.cidade),
            criarMenu(icone: Icons.person, rotulo: 'Cadastro de Pessoa', rota: Rotas.pessoa),
            criarMenu(icone: Icons.carpenter, rotulo: 'Cadastro de Produto', rota: Rotas.produto),
            criarMenu(icone: Icons.category, rotulo: 'Cadastro de Categoria', rota: Rotas.categoria),
            criarMenu(icone: Icons.people, rotulo: 'Lista de pessoas', rota: Rotas.pessoaLista),


          ],
        ),
      ),
      body: const Center(
        child: Text('Bem-vindo ao App de Cadastro!'),
      ),
    );
  }
}