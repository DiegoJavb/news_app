import 'package:flutter/material.dart';
import 'package:news_app/providers/news_provider.dart';
import 'package:news_app/widegts/lista_noticias.dart';
import 'package:provider/provider.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsProvider>(context);
    //newsProvider.headlines;

    return Scaffold(
      body: Center(
        child: ListaNoticias(newsProvider.headlines),
      ),
    );
  }
}
