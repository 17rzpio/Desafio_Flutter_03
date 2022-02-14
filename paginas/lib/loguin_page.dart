
import 'package:cards/home_page.dart';
import 'package:flutter/material.dart';

class LoguinPage extends StatefulWidget {
  const LoguinPage({ Key? key }) : super(key: key);

  @override
  _LoguinPageState createState() => _LoguinPageState();
}

class _LoguinPageState extends State<LoguinPage> {


  String senha = '';
 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Desafio3'),
    ),
      body: Center(
        child: 
           SizedBox(height: 250,width:300,
                child: Card(color:Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Ubunto'
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        onChanged: (text){
                            senha = text;
                          },
                        decoration: const InputDecoration(
                          labelText: 'Total de Ubuntus',
                          border: OutlineInputBorder()
                        ),
                      ),
                      const SizedBox(height: 10),
                      RaisedButton(onPressed: () {
                        if(senha == '') {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage())
                        );
                        }else{Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage())
                        );} 
                      },
                      child: const Text('Ver mais'),
                       ),
                      
                      ],
                    ),
                  ),
                ),
              ),
            ),
      ); 
  }
}

