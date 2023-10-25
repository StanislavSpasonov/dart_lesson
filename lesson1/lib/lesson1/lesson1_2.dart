import 'dart:math';

void main() {
  final length = 10;
  final maxNumber = 10;
  final arr = List.generate(
    length,
    (index) => Random().nextInt(maxNumber),
  );

  final searchNumber = 1;
  print(arr);

  try {
    final result = searchElement(arr, searchNumber);
    print(result);
  } catch (err) {
    print(err);
  }
}

int searchElement(List<int> arr, int searchNumber) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == searchNumber) {
      return i;
    }
  }
  throw 'Sorry this element not consist';
}
