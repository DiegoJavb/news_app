import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavigationModel(),
      child: Scaffold(
        body: _Screens(),
        bottomNavigationBar: _Navigation(),
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigate = Provider.of<_NavigationModel>(context);
    return BottomNavigationBar(
      currentIndex: navigate.paginaActual,
      onTap: (value) => navigate.paginaActual = value,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Para ti',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.public),
          label: 'Encabezados',
        ),
      ],
    );
  }
}

class _Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacion = Provider.of<_NavigationModel>(context);
    return PageView(
      controller: navegacion.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.green),
      ],
    );
  }
}

class _NavigationModel extends ChangeNotifier {
  int _paginaActual = 0;
  final PageController _pageController = PageController();

  int get paginaActual {
    return _paginaActual;
  }

  set paginaActual(int valor) {
    _paginaActual = valor;
    _pageController.animateToPage(
      valor,
      duration: const Duration(milliseconds: 250),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
    notifyListeners();
  }

  PageController get pageController {
    return _pageController;
  }
}
