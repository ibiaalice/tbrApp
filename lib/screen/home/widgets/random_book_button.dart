import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RandomBookButton extends StatelessWidget {
  final VoidCallback onTap;

  const RandomBookButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onTap,
      label: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.menu_book_rounded),
          ),
          Text('Sortear livro'),
        ],
      ),
    );
  }
}
