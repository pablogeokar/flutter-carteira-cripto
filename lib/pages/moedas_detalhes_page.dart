import 'package:flutter/material.dart';
import 'package:flutter_carteira_cripto/models/moeda.dart';

class MoedaDetalhesPage extends StatefulWidget {
  final Moeda moeda;
  const MoedaDetalhesPage({super.key, required this.moeda});

  @override
  State<MoedaDetalhesPage> createState() => _MoedaDetalhesPageState();
}

class _MoedaDetalhesPageState extends State<MoedaDetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moeda.nome, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Divider(),
          Row(
            children: [
              SizedBox(width: 50, child: Image.asset(widget.moeda.icone)),
            ],
          ),
        ],
      ),
    );
  }
}
