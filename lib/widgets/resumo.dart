import 'package:flutter/material.dart';

class Resumo extends StatelessWidget {
  final String cidade;
  final String descricao;
  final double temperaturaAtual;
  final double temperaturaMaxima;
  final double temperaturaMinima;
  final int numeroIcone;

  const Resumo({
    Key? key,
    required this.cidade,
    required this.descricao,
    required this.temperaturaAtual,
    required this.temperaturaMaxima,
    required this.temperaturaMinima,
    required this.numeroIcone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(5)),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.brightness_6_outlined),
              Switch(
                value: false,
                onChanged: (value) {}, // Correção aqui
              ),
            ],
          ),
        ),
        Text(
          cidade,
          style: TextStyle(fontSize: 18),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/$numeroIcone.png'),
            ),
            Padding(padding: EdgeInsets.all(2)),
            Text(
              '${temperaturaAtual.toStringAsFixed(0)}ºC',
              style: TextStyle(fontSize: 40),
            ),
            VerticalDivider(
              color: Colors.black,
              thickness: 1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${temperaturaMaxima.toStringAsFixed(0)}ºC'),
                Text('${temperaturaMinima.toStringAsFixed(0)}ºC')
              ],
            )
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text(descricao),
      ],
    );
  }
}
