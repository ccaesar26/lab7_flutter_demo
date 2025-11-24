import 'package:flutter/material.dart';
import 'package:lab7_flutter_demo/product_details_arguments.dart';
import 'package:lab7_flutter_demo/produs.dart';

class ListExampleScreen extends StatelessWidget {
  const ListExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Generăm o listă fictivă de date
    final List<Produs> produse = List.generate(
      20,
      (index) => Produs(
        id: index,
        nume: 'Produsul #$index',
        pret: (index + 1) * 10.5,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Listă Produse')),
      // ListView.builder este optimizat pentru liste lungi sau infinite.
      // Construiește elementele doar când devin vizibile (lazy loading).
      // Echivalentul direct este LazyColumn din Jetpack Compose.
      body: ListView.builder(
        itemCount: produse.length,
        itemBuilder: (context, index) {
          final produs = produse[index];
          
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            // ListTile este un widget standard pentru elemente de listă (titlu, subtitlu, iconiță).
            child: ListTile(
              leading: CircleAvatar(child: Text('${produs.id}')),
              title: Text(produs.nume),
              subtitle: Text('Preț: ${produs.pret} RON'),
              trailing: const Icon(Icons.arrow_forward_ios),
              // Navigare la click pe element
              onTap: () {
                // Transmiterea argumentelor către o rută numită.
                // Similar cu a pune argumente într-un Bundle sau în URL-ul rutei în Navigation Compose.
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: ProductDetailsArguments(
                    produs,
                    'Acesta este un mesaj trimis din listă.',
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
