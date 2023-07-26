
import 'package:flutter/material.dart';

import '../containment/containment.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material Components Widgets'),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
          children: [
            const Text(
                'Navigation: ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/drawer_navigation'),
                child: const Text('Drawer navigation')
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/bottom_navigation'),
                child: const Text('Bottom navigation')
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/tab_bar_navigation'),
                child: const Text('Tab bar navigation')
            ),
            const SizedBox(height: 20,),

            const Text(
                'Actions: ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/common_buttons'),
                child: const Text('Actions')
            ),
            const SizedBox(height: 20,),

            const Text(
                'Communication: ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/communication'),
                child: const Text('Communication')
            ),
            const SizedBox(height: 20,),

            const Text(
                'Containment: ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/containment'),
                child: const Text('Containment')
            ),
            const SizedBox(height: 20,),

            const Text(
                'Date picker: ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/date_picker'),
                child: const Text('Date picker')
            ),
          ],
        ),
        floatingActionButton:
        const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              tooltip: 'Common fab',
              foregroundColor: Colors.green,
              backgroundColor: Colors.white,
              elevation: 10.0,
              mini: true,
              onPressed: null,
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10,),
            FloatingActionButton.extended(
              tooltip: 'extended fab',
              foregroundColor: Colors.green,
              backgroundColor: Colors.white,
              elevation: 10.0,
              icon: Icon(Icons.add),
              onPressed: null,
              label: Text('New task'),
            )
          ],
        )
    );
  }
}