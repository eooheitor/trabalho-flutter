import 'package:flutter/material.dart';
import 'tela_secundaria.dart'; // Certifique-se de que o caminho está correto

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  TextEditingController _controller = TextEditingController();
  List<String> _itens = [];

  void _adicionarItem() {
    setState(() {
      _itens.add(_controller.text);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0), // Margem à direita
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSecundaria()),
                );
              },
              child: Text(
                'Tela 2',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF1481BF), // Cor de fundo azul
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Digite um item para adicionar à lista:',
              style: TextStyle(fontSize: 18, color: Colors.white), // Cor do texto
            ),
            SizedBox(height: 10),

            // Campo de texto para adicionar itens
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Digite um item',
                labelStyle: TextStyle(color: Colors.white), // Cor do label
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // Cor da borda
                ),
              ),
              style: TextStyle(color: Colors.white), // Cor do texto no campo
            ),
            SizedBox(height: 10),

            // Botão para adicionar o item à lista
            ElevatedButton(
              onPressed: _adicionarItem,
              child: Text('Adicionar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Cor do botão
              ),
            ),
            SizedBox(height: 20),

            // Lista de itens
            Expanded(
              child: _itens.isEmpty
                  ? Center(child: Text('Nenhum item na lista. Adicione algo!', style: TextStyle(color: Colors.white)))
                  : ListView.builder(
                      itemCount: _itens.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            _itens[index],
                            style: TextStyle(color: Colors.white), // Cor do texto na lista
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
