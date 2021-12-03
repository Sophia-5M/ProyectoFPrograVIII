import 'package:cartelera/screens/raiting_screen.dart';
import 'package:cartelera/screens/review_screen.dart';
import 'package:cartelera/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeSwippedScreen(),
    RaitingScreen(),
    ReviewScreen()
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas en Cines'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
        ],
      ),
      // body: Container(
      //   child: Center(
      //     child: Text('Home Screen'),
      //   ),
      // ),
      // body: Column(
      //   children: [CardSwiper(), MovieSlider()],
      // ),
      // body: SingleChildScrollView(
      //   child: _screens[_currentIndex],
      // ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapeped,
        fixedColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista')
        ],
      ),
    );
  }

  void onTapeped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
