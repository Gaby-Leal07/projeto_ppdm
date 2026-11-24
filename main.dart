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
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.blue.shade50, Colors.blue.shade100],
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
          // FOTO DE PERFIL COM MOLDURA, ENQUADRAMENTO E PROTEÇÃO CONTRA ERRO
          Container(
            width: 112,
            height: 112,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
              border: Border.all(color: Colors.white, width: 4),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDy5Y4Ej8JPjBhPw2B-kdtbUE00LeF3fNhb8WFsYyrSvmmHI8UzW-TanJi&s=10',
                fit: BoxFit.cover, // Preenche o círculo sem achatar a imagem
                alignment: Alignment.topCenter, // Evita cortar o rosto
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  // Fallback caso o navegador bloqueie a imagem externa (CORS)
                  return const Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.white,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Gaby Leal Almeida',
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

          // Seção "Sobre Mim"
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
            'Sou estudante em desenvolvimento de tecnologia, e procuro melhorias para meu aprendizado',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 13, color: Colors.black54, height: 1.4),
          ),
          const SizedBox(height: 16),

          // Badges de habilidades
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

          // Contatos
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
