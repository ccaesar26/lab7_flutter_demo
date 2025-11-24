// Clasă simplă de date (Data Class).
// Similar cu data class Produs(...) din Kotlin.
class Produs {
  final int id;
  final String nume;
  final double pret;

  // Constructor simplu
  Produs({required this.id, required this.nume, required this.pret});
}
