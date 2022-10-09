import 'package:mobx/mobx.dart';
import 'package:tbr/domain/common/random_int.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  List books = [];

  @observable
  String sortBook = "";

  void sortByBooks() {
    if (books.isEmpty) return;

    final int sort = RandomInt.sort(books.length);
    sortBook = books[sort];

    books.remove(sortBook);
  }

  @action
  void addBook(String value) {
    List aux = books;
    aux.add(value);

    aux.sort((a, b) => a.toString().compareTo(b.toString()));
    books = aux;
  }

  @action
  void removeBook(String value) {
    List aux = books;
    aux.remove(value);

    books = aux;
  }
}
