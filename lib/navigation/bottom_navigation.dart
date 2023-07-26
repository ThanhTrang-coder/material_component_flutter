import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom navigation Sample'),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
              icon: Icon(Icons.explore),
              label: 'Explore',
          ),
          NavigationDestination(
              icon: Badge(
                isLabelVisible: true,
                label: Text('2'),
                backgroundColor: Colors.green,
                alignment: AlignmentDirectional.topEnd,
                child: Icon(Icons.access_time),
              ),
              label: 'Recents'
          ),
          NavigationDestination(
              selectedIcon: Icon(Icons.bookmark),
              icon: Icon(Icons.bookmark_border),
              label: 'Saved',
          ),
        ],
      ),
      body: <Widget> [
        Container(
          alignment: Alignment.center,
          child: const Text('Explore Page'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Recents Page'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Saved Page'),
        ),
      ][currentPageIndex],
    );
  }
}

