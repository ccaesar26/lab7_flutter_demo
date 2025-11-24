import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meniu Capitol 7')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Alege un concept de testat:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Navigare simplă folosind rute denumite
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/layout'),
              child: const Text('1. Layout & Stateless (7.3)'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/interactive'),
              child: const Text('2. Interactivitate & State (7.4)'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/list'),
              child: const Text('3. Liste & Navigare cu Args (7.4.3 & 7.5)'),
            ),
          ],
        ),
      ),
    );
  }
}
