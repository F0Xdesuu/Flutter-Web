import 'package:flutter/material.dart';
import '../components/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: ProductCard(
          imageUrl:
              'https://images.tcdn.com.br/img/img_prod/1064321/celular_nokia_nk025_4g_128gb_octacore_azul_1857_1_2f86a56cd46e96ae742e915856c6f185.jpg',
          name: 'Smartphone Nokia',
          description:
              'Um smartphone incrível praticamente inquebrável com câmera de alta resolução, '
              'bateria de longa duração e processador potente.',
          price: 1999.99,
          onBuyPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Produto adicionado ao carrinho!'),
              ),
            );
          },
        ),
      ),
    );
  }
}
