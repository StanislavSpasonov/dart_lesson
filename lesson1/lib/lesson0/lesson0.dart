import 'dart:math';

void sortArray(List list) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + i; j < list.length; j++) {
      if (list[i] > list[j]) {
        int tmp = list[i];
        list[i] = list[j];
        list[j] = tmp;
      }
    }
  }
}

int? binarSearch(int searcNumber, List list) {
  int left = list[0];
  int right = list[list.length - 1];
  while (left < right) {
    int middel = ((right - left) ~/ 2) + left;
    if (list[middel] == searcNumber) {
      return middel;
    }
  }
}

void main() {
  var arr = List.generate(10, (index) => Random().nextInt(10));
  print(arr);
  sortArray(arr);
  print(arr);
}
