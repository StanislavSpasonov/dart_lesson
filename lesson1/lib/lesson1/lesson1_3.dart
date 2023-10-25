import 'dart:math';

void main() {
  final length = 10;
  final maxNumber = 10;
  var arr = List.generate(
    length,
    (index) => Random().nextInt(maxNumber),
  );
  arr.sort((a, b) => a - b);

  final searchNumber = 5;
  print(arr);

  try {
    final result = binarySearch(arr, searchNumber);
    print(result);
  } catch (err) {
    print(err);
  }
}

int binarySearch(List<int> arr, int searchNumber) {
  var centralElIndex = arr.length ~/ 2;
  var leftIndex = 0;
  var rightIndex = arr.length - 1;
  while (leftIndex < rightIndex) {
    if (arr[centralElIndex] == searchNumber) {
      return centralElIndex;
    } else if (arr[centralElIndex] < searchNumber) {
      leftIndex = centralElIndex;
      centralElIndex = leftIndex + (rightIndex - leftIndex) ~/ 2;
    } else {
      rightIndex = centralElIndex - 1;
      centralElIndex = rightIndex - (rightIndex - leftIndex) ~/ 2;
    }
  }

  print('left = $leftIndex, centrel = $centralElIndex, right = $rightIndex');
  throw 'error';
}
