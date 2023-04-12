import 'package:flutter/material.dart';
import 'NovaTela.dart';

class CardWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? imagePath;

  CardWidget({this.title, this.subtitle, this.imagePath});
  void _exibirMensagem(BuildContext context) {
    final snackBar = SnackBar(content: Text('UBUNTU 4EVER'));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text("UBUNTU", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text("TOTAL DE UBUNTUS"),
          SizedBox(height: 8),
          Text('Digite um número:'),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Digite o total de ubuntus aqui',
            ),
          ),
          ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NovaTela()),
    );
  },
  child: Text('Abrir nova tela'),
),
        ],
      ),
    );
  }
}