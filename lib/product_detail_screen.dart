import 'package:flutter/material.dart';
import 'package:lab7_flutter_demo/product_details_arguments.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Extragerea argumentelor din setările rutei.
    // ModalRoute.of(context) accesează ruta curentă.
    // Similar cu extragerea argumentelor din SavedStateHandle în ViewModel sau din backStackEntry în Compose.
    final args = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(title: Text(args.produs.nume)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.shopping_bag, size: 80, color: Colors.blueGrey),
              const SizedBox(height: 20),
              Text(
                'Detalii pentru ID: ${args.produs.id}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(
                'Preț: ${args.produs.pret} RON',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.amber[100],
                child: Text('Mesaj primit: "${args.mesaj}"'),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Întoarcere la ecranul anterior.
                  // Similar cu navController.popBackStack() în Compose.
                  Navigator.pop(context);
                },
                child: const Text('Înapoi la Listă'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}