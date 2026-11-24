import 'package:flutter/material.dart';

void main() {
  runApp(const CrachaApp());
}

class CrachaApp extends StatelessWidget {
  const CrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: const Text(
            'Crachá Digital',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[800],
        ),
        body: const Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CartaoCracha(),
          ),
        ),
      ),
    );
  }
}

class CartaoCracha extends StatelessWidget {
  const CartaoCracha({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        // EXERCÍCIO 4: Fundo gradiente aplicado no BoxDecoration
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Colors.blue.shade50,
            Colors.blue.shade100,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // EXERCÍCIO 1: CircleAvatar com NetworkImage
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blueAccent,
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=300&q=80',
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Seu Nome Aqui',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const Text(
            'Desenvolvedor(a) Flutter',
            style: TextStyle(
              fontSize: 14,
              color: Colors.blueGrey,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Divider(height: 30, thickness: 1),

          // EXERCÍCIO 2: Seção "Sobre Mim" com breve biografia
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Sobre Mim',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Apaixonado(a) por desenvolvimento mobile, criação de interfaces fluidas e resolução de problemas com código limpo.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),

          // EXERCÍCIO 3: Badges de habilidades (skills) com Chip dentro de uma Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chip(
                label: const Text('Flutter', style: TextStyle(fontSize: 12)),
                backgroundColor: Colors.blue.shade100,
                side: BorderSide.none,
              ),
              Chip(
                label: const Text('Dart', style: TextStyle(fontSize: 12)),
                backgroundColor: Colors.teal.shade100,
                side: BorderSide.none,
              ),
              Chip(
                label: const Text('UI/UX', style: TextStyle(fontSize: 12)),
                backgroundColor: Colors.indigo.shade100,
                side: BorderSide.none,
              ),
            ],
          ),
          const Divider(height: 30, thickness: 1),

          // Contatos originais
          const Row(
            children: [
              Icon(Icons.email, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text('dev@email.com'),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.phone, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text('+55 (11) 99999-9999'),
            ],
          ),
        ],
      ),
    );
  }
}
