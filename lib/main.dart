import 'package:flutter/material.dart';
import 'package:listbuilderapp/contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ListaPage(
      ),
    );
  }
}

class ListaPage extends StatelessWidget {
  ListaPage({super.key});
  List<Contato> contatos = [
    Contato('AAAAA', 'AAAAAA'),
    Contato('AAAAA', 'AAAAAA'),
    Contato('AAAAA', 'AAAAAA'),
    Contato('AAAAA', 'AAAAA'),
    Contato('AAAAA', 'AAAAAA'),
    Contato('AAAAA', 'AAAAA'),
    Contato('AAAAA', 'AAAA'),
    Contato('AAAAA', 'AAAAA'),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('ListView Builder'),),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(child: Text(contatos[index].nome[0]),),
            title: Text(contatos[index].nome),
            subtitle:  Text(contatos[index].email)
          );
        },
      ),
    );
  }
}
