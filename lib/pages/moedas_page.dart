import 'package:flutter/material.dart';
import 'package:flutter_carteira_cripto/models/moeda.dart';
import 'package:flutter_carteira_cripto/repositories/moeda_repository.dart';
import 'package:intl/intl.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  List<Moeda> selecionadas = [];
  final tabela = MoedaRepository.tabela;
  NumberFormat real = NumberFormat.currency(
    locale: 'pt_BR',
    name: 'R\$',
    decimalDigits: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cripto Moedas')),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            leading: (selecionadas.contains(tabela[moeda]))
                ? CircleAvatar(child: Icon(Icons.check))
                : SizedBox(width: 40, child: Image.asset(tabela[moeda].icone)),
            title: Text(
              tabela[moeda].nome,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            trailing: Text(real.format(tabela[moeda].preco)),
            selectedTileColor: Colors.indigo[50],
            selected: selecionadas.contains(tabela[moeda]),
            onLongPress: () {
              setState(() {
                (selecionadas.contains(tabela[moeda]))
                    ? selecionadas.remove(tabela[moeda])
                    : selecionadas.add(tabela[moeda]);
              });
            },
          );
        },
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
