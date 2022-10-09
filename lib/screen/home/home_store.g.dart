// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$booksAtom = Atom(name: '_HomeStoreBase.books', context: context);

  @override
  List<dynamic> get books {
    _$booksAtom.reportRead();
    return super.books;
  }

  @override
  set books(List<dynamic> value) {
    _$booksAtom.reportWrite(value, super.books, () {
      super.books = value;
    });
  }

  late final _$sortBookAtom =
      Atom(name: '_HomeStoreBase.sortBook', context: context);

  @override
  String get sortBook {
    _$sortBookAtom.reportRead();
    return super.sortBook;
  }

  @override
  set sortBook(String value) {
    _$sortBookAtom.reportWrite(value, super.sortBook, () {
      super.sortBook = value;
    });
  }

  late final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase', context: context);

  @override
  void addBook(String value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.addBook');
    try {
      return super.addBook(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
books: ${books},
sortBook: ${sortBook}
    ''';
  }
}
