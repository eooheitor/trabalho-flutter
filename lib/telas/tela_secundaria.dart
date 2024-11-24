import 'package:flutter/material.dart';

class TelaSecundaria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Secundária'),
        backgroundColor: Color(0xFF1481BF), // Cor de fundo azul da AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Volta para a tela anterior
          },
        ),
      ),
      backgroundColor: Color(0xFF1481BF), // Cor de fundo azul da tela
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo à Tela Secundária!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Cor do texto
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Voltar para a tela principal
              },
              child: Text('Voltar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Cor do botão de volta
                foregroundColor: Colors.black, // Cor do texto no botão
              ),
            ),
          ],
        ),
      ),
    );
  }
}
