void main() {
  const sentence = "the quick brown fox jumps mono over the lazy dog";
  const searchLetter = "o";

  final result = sentence.split(' ').where((e) => e.contains(searchLetter));
  var result1 = sentence.split(' ').map((e) {
    if (e.contains(searchLetter)) {
      return e;
    }
  }).toList();
  result1 = result1.where((element) => element != null).toList();

  print(result);
  print(result1);
}
