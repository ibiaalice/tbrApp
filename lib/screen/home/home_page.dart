import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tbr/screen/home/home_store.dart';
import 'package:tbr/screen/home/widgets/add_book_alert.dart';
import 'package:tbr/screen/home/widgets/book_list_tile.dart';
import 'package:tbr/screen/home/widgets/random_book_button.dart';
import 'package:tbr/screen/home/widgets/sort_book_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final store = HomeStore();

    return Scaffold(
      appBar: AppBar(
        title: const Text('TBR'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AddBookAlert(
                    addBook: store.addBook,
                  );
                },
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButton: RandomBookButton(onTap: () => store.sortByBooks()),
      body: Observer(
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                if (store.sortBook != '')
                  SortBookCard(sortBook: store.sortBook)
                else
                  const SizedBox(
                    height: 90,
                    child: Center(
                      child: Text('nenhum livro sorteado, ainda'),
                    ),
                  ),
                for (int i = 1; i <= store.books.length; i++) ...[
                  BookListTile(
                    book: store.books[i - 1],
                    index: i.toString(),
                    remove: (value) {
                      store.removeBook(value);
                    },
                  ),
                  const Divider(thickness: 1)
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
