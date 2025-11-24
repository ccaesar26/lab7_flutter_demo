import 'package:flutter/material.dart';

class LayoutExampleScreen extends StatelessWidget {
  const LayoutExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout-uri de Bază')),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Modifier.padding(16.dp)
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Exemplu Row (Orizontal):'),
            const SizedBox(height: 10),
            // Row este echivalentul Row din Jetpack Compose.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Arrangement.SpaceAround
              children: [
                // Container este un widget versatil pentru styling (dimensiuni, culori, margini).
                // Similar cu Box sau Surface cu modifiers în Compose.
                Container(color: Colors.red, width: 50, height: 50),
                Container(color: Colors.green, width: 50, height: 50),
                Container(color: Colors.blue, width: 50, height: 50),
              ],
            ),
            const Divider(height: 30),
            const Text('Exemplu Stack (Suprapunere):'),
            const SizedBox(height: 10),
            // Stack permite suprapunerea widget-urilor (ca un Z-index).
            // Este echivalentul lui Box din Jetpack Compose.
            Center(
              child: Stack(
                alignment: Alignment.center, // ContentAlignment = Alignment.Center
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
