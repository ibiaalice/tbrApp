import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookListTile extends StatelessWidget {
  final String book;
  final String index;
  final Function remove;

  const BookListTile({
    super.key,
    required this.book,
    required this.index,
    required this.remove,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(index),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          remove(book);
        },
      ),
      title: Text(book),
    );
  }
}
