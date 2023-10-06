import 'package:flutter/material.dart';
import 'package:news_app/models/news_models.dart';

class ListaNoticias extends StatelessWidget {
  final List<Article> noticias;

  const ListaNoticias(this.noticias);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noticias.length,
      itemBuilder: (_, int i) {
        return _Noticia(noticia: noticias[i], index: i);
      },
    );
  }
}

class _Noticia extends StatelessWidget {
  final Article noticia;
  final int index;

  const _Noticia({required this.noticia, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_TarjetaTopBar(noticia, index)],
    );
  }
}

class _TarjetaTopBar extends StatelessWidget {
  final Article noticia;
  final int indice;

  const _TarjetaTopBar(this.noticia, this.indice);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[Text('${indice + 1}')],
      ),
    );
  }
}
