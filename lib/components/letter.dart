import 'package:flutter/material.dart';

class LetterComponent extends StatelessWidget {
  final String letter;
  const LetterComponent({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: Column(children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              letter,
              style: const TextStyle(
                fontFamily: "SGA",
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              letter,
              style: TextStyle(color: Colors.grey[500]),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
