import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/myProfile.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 236, 33, 243)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/Cabrinha.jpeg',
              ), // coloque sua imagem aqui
            ),
            Text(
              "Seja Bem-Vindo!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith(
                  (states) => const Color.fromARGB(255, 152, 255, 68),
                ),
              ),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MyProfile()));
              },
              child: Text(
                "Ir para perfil",
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
