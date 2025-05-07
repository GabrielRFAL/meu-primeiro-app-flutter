import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/home.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String name = "Gabriel Ribas";
  String occupation = "Faço parte do Synapse";
  String objective =
      "Tenho o objetivo de conseguir um estágio na área da programação";
  String termo = "Estou no 2º Termo do Big Data!";
  TextEditingController nameController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController objectiveController = TextEditingController();
  TextEditingController termoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Voltar",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 236, 33, 243),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagem de perfil
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/Cabrinha.jpeg'),
            ),
            const SizedBox(height: 10),

            // Containers com textos estilizados
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.purple.shade100,
              child: Text(
                "Meu nome é: $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.blue.shade100,
              child: Text(
                "Ocupação: $occupation",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.green.shade100,
              child: Text(
                "Objetivo: $objective",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.orange.shade100,
              child: Text(
                "Termo: $termo",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith(
                  (states) => const Color.fromARGB(255, 152, 255, 68),
                ),
              ),
              onPressed: () {
                // ação para editar perfil
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Edite suas informações"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(label: Text("Nome")),
                          ),
                          TextFormField(
                            controller: occupationController,
                            decoration: InputDecoration(
                              label: Text("Ocupação"),
                            ),
                          ),
                          TextFormField(
                            controller: objectiveController,
                            decoration: InputDecoration(
                              label: Text("Objetivo"),
                            ),
                          ),
                          TextFormField(
                            controller: termoController,
                            decoration: InputDecoration(label: Text("Termo")),
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text("Cancelar"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              name = nameController.text;
                              occupation = occupationController.text;
                              objective = objectiveController.text;
                              termo = termoController.text;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("Salvar"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                "Editar Perfil",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith(
                  (states) => const Color.fromARGB(255, 152, 255, 68),
                ),
              ),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text(
                "Voltar para Home",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
