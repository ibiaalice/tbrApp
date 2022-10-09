import 'package:flutter/material.dart';

class AddBookAlert extends StatelessWidget {
  final Function addBook;
  const AddBookAlert({super.key, required this.addBook});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return AlertDialog(
      title: const Text('Adicione um livro'),
      content: Container(
        alignment: Alignment.center,
        height: 100,
        width: 400,
        child: TextField(
          controller: controller,
          decoration:
              const InputDecoration(icon: Icon(Icons.menu_book_rounded)),
        ),
      ),
      actions: [
        TextButton(
          child: const Text('cancelar'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          onPressed: () {
            addBook(controller.text);
            Navigator.pop(context);
          },
          child: const Text('adicionar'),
        )
      ],
    );
  }
}
