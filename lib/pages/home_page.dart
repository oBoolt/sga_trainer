import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  var _wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

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
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.model_training),
              title: const Text("Alphabet"),
              onTap: () {
                Navigator.pushNamed(context, "/alphabet");
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    "${_wordPair.first} ${_wordPair.second}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "SGA",
                      fontSize: 36,
                      color: Colors.white,
                      wordSpacing: 12,
                      letterSpacing: 12,
                      height: 2,
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: TextField(
                        controller: _textController,
                        decoration: const InputDecoration(
                          hintText: "Translate the text...",
                          border: OutlineInputBorder(),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 3,
                      child: TextButton(
                        onPressed: () {
                          if (_textController.text.isEmpty) {
                            return;
                          }

                          if (_textController.text ==
                              "${_wordPair.first} ${_wordPair.second}") {
                            setState(() {
                              _wordPair = WordPair.random();
                              _textController.clear();
                            });
                          }
                        },
                        style: TextButton.styleFrom(
                          minimumSize: Size.infinite,
                          foregroundColor: Colors.white,
                          backgroundColor: theme.colorScheme.inversePrimary,
                          padding: const EdgeInsets.all(6.0),
                          textStyle: const TextStyle(fontSize: 18),
                          shape: const ContinuousRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                        child: const Text("Submit"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
