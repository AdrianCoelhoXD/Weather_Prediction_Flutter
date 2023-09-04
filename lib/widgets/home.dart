import 'package:flutter/material.dart';
import 'package:weathe_application/widgets/resumo.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prevision weather"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Resumo(
            cidade: 'Campina Grande-PB',
            temperaturaAtual: 33,
            temperaturaMaxima: 39,
            temperaturaMinima: 27,
            descricao: 'Ensolarado',
            numeroIcone: 1,
          ),
        ],
      )),
    );
  }
}
