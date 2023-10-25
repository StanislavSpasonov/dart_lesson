void main() {
  const sentence = "the quick brown fox jumps mono over the lazy dog";
  const searchLetter = "o";
  var arrayWords = createArr(sentence);
  var resultSearch = searchArr(arrayWords, searchLetter);
  print(sentence);
  print(arrayWords);
  print(resultSearch);
}

List<String> searchArr(List<String> arrayWords, String searchLetter) {
  List<String> arrayWithSearchLetter = [];
  for (int i = 0; i < arrayWords.length; i++) {
    for (int j = 0; j < arrayWords[i].length; j++) {
      if (arrayWords[i][j] == searchLetter) {
        arrayWithSearchLetter.add(arrayWords[i]);
        break;
      }
    }
  }
  return arrayWithSearchLetter;
}

List<String> createArr(String sentence) {
  List<String> wordsArr = [];
  String word = '';

  for (int i = 0; i < sentence.length; i++) {
    if (sentence[i] == ' ') {
      wordsArr.add(word);
      word = '';
    } else {
      word = word + sentence[i];
    }
  }
  return wordsArr;
}
