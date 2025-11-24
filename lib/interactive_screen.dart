import 'package:flutter/material.dart';
import 'package:lab7_flutter_demo/main.dart';

class InteractiveScreen extends StatefulWidget {
  const InteractiveScreen({super.key});

  @override
  State<InteractiveScreen> createState() => _InteractiveScreenState();
}

class _InteractiveScreenState extends State<InteractiveScreen> {
  // Controller pentru TextField (Vezi 7.4.2)
  final TextEditingController _nameController = TextEditingController();
  String _greetingMessage = "Introdu numele tău mai jos";
  bool _isSwitchOn = false;

  void _updateGreeting() {
    // setState declanșează recompoziția (rebuild) - Vezi 7.4.1
    setState(() {
      if (_nameController.text.isNotEmpty) {
        _greetingMessage = "Salut, ${_nameController.text}!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget Demo')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              _greetingMessage,
              style: const TextStyle(fontSize: 22, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Input Text
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nume',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            // Buton Interactiv
            ElevatedButton(
              onPressed: _updateGreeting,
              child: const Text('Actualizează Mesajul (setState)'),
            ),
            const Divider(height: 40),
            // Un alt element interactiv simplu (Switch)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Activează opțiunea:'),
                Switch(
                  value: _isSwitchOn,
                  onChanged: (bool value) {
                    setState(() {
                      _isSwitchOn = value;
                    });
                  },
                ),
              ],
            ),
            if (_isSwitchOn)
              const Text(
                'Opțiunea este ACTIVĂ!',
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}