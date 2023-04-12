import 'package:flutter/material.dart';

class NovaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Tela'),
         leading: IconButton(  // adicionar o IconButton na app bar
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('ubuntu for ever'),
      ),
      
    );
  }
}