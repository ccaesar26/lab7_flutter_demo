import 'package:flutter/material.dart';

class LayoutExampleScreen extends StatelessWidget {
  const LayoutExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout-uri de Bază')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Exemplu Row (Orizontal):'),
            const SizedBox(height: 10),
            // Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(color: Colors.red, width: 50, height: 50),
                Container(color: Colors.green, width: 50, height: 50),
                Container(color: Colors.blue, width: 50, height: 50),
              ],
            ),
            const Divider(height: 30),
            const Text('Exemplu Stack (Suprapunere):'),
            const SizedBox(height: 10),
            // Stack
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.redAccent,
                  ),
                  const Text(
                    'Stack',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
