import 'package:flutter/material.dart';
import 'package:sga_trainer/components/letter.dart';

class AlphabetPage extends StatelessWidget {
  const AlphabetPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("");

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text(
          "Standard Galactic Alphabet Trainer",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.abc_rounded),
              title: const Text("Trainer"),
              onTap: () {
                var currentRoute = ModalRoute.of(context)?.settings.name;
                if (currentRoute == "/") {
                  return;
                }

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.model_training),
              title: const Text("Alphabet"),
              onTap: () {
                var currentRoute = ModalRoute.of(context)?.settings.name;
                if (currentRoute == "/alphabet") {
                  return;
                }

                Navigator.pushNamed(context, "/alphabet");
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            shrinkWrap: true,
            children: alphabet
                .map((letter) => LetterComponent(letter: letter))
                .toList(),
          ),
        ),
      ),
    );
  }
}
