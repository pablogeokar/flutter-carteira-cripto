import 'package:flutter_carteira_cripto/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: 'images/bitcoin.png',
      nome: 'Bitcoin',
      sigla: 'BTC',
      preco: 50000.0,
    ),
    Moeda(
      icone: 'images/ethereum.png',
      nome: 'Ethereum',
      sigla: 'ETH',
      preco: 4000.0,
    ),
    Moeda(
      icone: 'images/cardano.png',
      nome: 'Cardano',
      sigla: 'ADA',
      preco: 2.0,
    ),
    Moeda(icone: 'images/xrp.png', nome: 'XRP', sigla: 'XRP', preco: 3.34),
    Moeda(
      icone: 'images/litecoin.png',
      nome: 'Litecoin',
      sigla: 'LTC',
      preco: 30.0,
    ),
    Moeda(
      icone: 'images/usdc.png',
      nome: 'USD Coin',
      sigla: 'USDC',
      preco: 20.0,
    ),
  ];
}
