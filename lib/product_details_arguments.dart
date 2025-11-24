import 'package:lab7_flutter_demo/produs.dart';

// Clasă pentru a grupa argumentele trimise către ecranul de detalii.
// Utilă când vrem să trimitem mai multe obiecte printr-o singură rută.
class ProductDetailsArguments {
  final Produs produs;
  final String mesaj;

  ProductDetailsArguments(this.produs, this.mesaj);
}
