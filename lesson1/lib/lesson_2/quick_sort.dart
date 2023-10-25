import 'package:lesson1/lesson_2/lesson_2.dart';

void quickSort(List<int> list, int leftIndex, int rightIndex) {
  if (leftIndex < rightIndex) {
    var pivot = list[rightIndex];
    partition(list, pivot, leftIndex, rightIndex);
  }
}

int partition(List<int> list, int pivot, int leftIndex, int rightIndex) {
  while (leftIndex < rightIndex) {
    while (list[leftIndex] <= pivot && leftIndex < rightIndex) {
      leftIndex++;
    }

    while (list[rightIndex] > pivot && leftIndex < rightIndex) {
      rightIndex--; // rightIndex=rightIndex-1;
    }
    swap(list, leftIndex, rightIndex);
  }
  return rightIndex;
}
