import 'package:flutter/material.dart';
import 'package:flutter_carteira_cripto/pages/moedas_page.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoedasBase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MoedasPage(),
    );
  }
}
