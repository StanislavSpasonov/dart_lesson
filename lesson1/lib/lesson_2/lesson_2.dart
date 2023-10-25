//Bubble sort)
//Сортировка вставками (англ. Insertion sort)
//Сортировка выбором (англ. Selection sort)
//Быстрая сортировка (англ. Quicksort)

import 'dart:math';

import 'package:lesson1/lesson_2/quick_sort.dart';

void main() {
  const length = 10;
  const maxNumber = 20;
  var arr = List.generate(length, (index) => Random().nextInt(maxNumber));
  print('begin arr = $arr');

  var arrString = ['привет', 'как', 'дела'];

  arrString.sort((a, b) => a.length - b.length);
  print(arrString);

  // print(arr);
  // bubbleSortWithOnlyWhile(arr);
  // print(arr);
  // var searchValue = 5;
  // try {
  //   final i = search(arr, searchValue);
  //   print('Index of searching eliment $searchValue: $i');
  // } catch (err) {
  //   print(err);
  // }
  // try {
  //   print('index: ${binarySearch(arr, 8888888)}');
  // } catch (err) {
  //   print(err);
  // }
}

void bubbleSort(List array) {
  var markArrayIsChanged = false;
  do {
    markArrayIsChanged = false;
    for (int i = 0; i < array.length - 1; i++) {
      if (array[i] > array[i + 1]) {
        swap(array, i, i + 1);
        markArrayIsChanged = true;
      }
    }
  } while (markArrayIsChanged == true);
}

void bubbleSortWithOnlyWhile(List array) {
  var markArrayIsChanged = true;
  while (markArrayIsChanged == true) {
    markArrayIsChanged = false;
    for (int i = 0; i < array.length - 1; i++) {
      if (array[i] > array[i + 1]) {
        swap(array, i, i + 1);
        markArrayIsChanged = true;
      }
    }
  }
}

int binarySearch(List<int> list, int searchValue) {
  // 1 Определить опорные лементы (левый правый  редний)
  // 2 если средний елемент равен числу вернуть индекс (значение найдено)
  // 3 если меньше тода возьмем левый подмасив (определим новые опорные елементы)
  // 4 если больше возьм правй подмассив
  // 5 если левый индекс меньше правого вернемся к пункту 1

  var leftIndex = 0;
  var centralIndex = list.length ~/ 2;
  var rigthIndex = list.length - 1;

  while (leftIndex < rigthIndex) {
    if (searchValue == list[centralIndex]) {
      return centralIndex;
    } else if (searchValue <= list[centralIndex]) {
      rigthIndex = centralIndex - 1;
      centralIndex = ((rigthIndex - leftIndex) ~/ 2) + leftIndex;
    } else {
      leftIndex = centralIndex + 1;
      centralIndex = ((rigthIndex - leftIndex) ~/ 2) + leftIndex;
    }
  }

  throw 'Sorry element $searchValue cann`t found';
}

void swap(List arr, int indexFirst, int indexSecond) {
  var tempValue = arr[indexFirst];
  arr[indexFirst] = arr[indexSecond];
  arr[indexSecond] = tempValue;
}

int search(List<int> arr, int searchValue) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == searchValue) {
      return i;
    }
  }
  throw 'Sorry, element $searchValue is absent in array';
}
