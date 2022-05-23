import 'package:flutter/material.dart';
import '/screens/favorites_screen.dart';
import '/screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    CategoriesScreen(),
    FavoritesScreen(),
  ];
  int _selectedPageIndex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beauty Elements'),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Colors.amber,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blue,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: ('category'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: ("Favorites"),
            ),
          ]),
    );
  }
}
