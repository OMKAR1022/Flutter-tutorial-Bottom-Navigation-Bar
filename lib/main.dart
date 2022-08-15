import 'package:flutter/material.dart';

void main () => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: bottomnavigationbar(),
    );
  }
}
class bottomnavigationbar extends StatefulWidget {
  const bottomnavigationbar({Key? key}) : super(key: key);

  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  int _currentIndex = 0;
  final screen =[
    const Center(
      child: Text('home'),
    ),
    const Center(
      child: Text('search',),
    ),
    const Center(
      child: Text('favorite'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bottomnavigationbar'),
      ),
      body: screen [_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.purpleAccent,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          size: 40,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favorite'
          )
        ],
      ),
    );
  }
}
