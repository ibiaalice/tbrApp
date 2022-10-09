import 'package:flutter/material.dart';

class SortBookCard extends StatelessWidget {
  final String sortBook;
  const SortBookCard({super.key, required this.sortBook});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 400,
        height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 5, left: 10),
                alignment: Alignment.topLeft,
                child: const Text('Livro Sorteado:'),
              ),
              Text(
                sortBook,
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
