import 'package:flutter/material.dart';
import 'package:tbr/domain/style/tbr_theme.dart';
import 'package:tbr/screen/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TBR - Aplicativo de sorteio de livros',
      theme: TBRTheme.primaryTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
