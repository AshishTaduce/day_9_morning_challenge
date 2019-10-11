main() {
  print(uniqueSort([1, 2, 4, 3]));
  print(sumOfEvens([
    [1, 0, 2],
    [5, 5, 7],
    [9, 4, 3]
  ]));
  print(sumOfEvens([
   [1, 1],
  [1, 1]
 ]));
  unmix("hTsii  s aimex dpus rtni.g");
}

// Challenge 1 - Purge and Organize
// Given a list of numbers, write a function that returns an list that...
// 1. Has all duplicate elements removed .
// 2. Is sorted from least to greatest value.
// Examples
// uniqueSort([1, 2, 4, 3]) ➞ [1, 2, 3, 4]
// uniqueSort([1, 4, 4, 4, 4, 4, 3, 2, 1, 2]) ➞ [1, 2, 3, 4]
// uniqueSort([6, 7, 3, 2, 1]) ➞ [1, 2, 3, 6, 7]

List uniqueSort(List list) {
  List x = list.toSet().toList();
  x.sort();
  return x;
}

// Challenge 2 - Sum of all Even Numbers in a Matrix
// Create a function that returns the sum of all even elements in a 2D matrix.
// Examples
// sumOfEvens([
//   [1, 0, 2],
//   [5, 5, 7],
//   [9, 4, 3]
// ]) ➞ 6
//
// 2 + 4 = 6
//
// sumOfEvens([
//   [1, 1],
//   [1, 1]
// ]) ➞ 0
//
// sumOfEvens([
//   [42, 9],
//   [16, 8]
// ]) ➞ 66
//
// sumOfEvens([
//   [],
//   [],
//   []
// ]) ➞ 0

int sumOfEvens(List<List<int>> matrix) {
  int sum = 0;
  for (List x in matrix) {
    if (x != null) {
      for (int y in x) {
        if (y % 2 == 0) {
          sum = y + sum;
        }
      }
    }
  }
  return sum;
}

// Challenge 3 - Unmix My Strings
// 'lPaeesh le pemu mnxit ehess rtnisg!' Oh, sorry, that was supposed to say: Please help me unmix these strings!
// Somehow my strings have all become mixed up; every pair of characters has been swapped.
// Help me undo this so I can understand my strings again.
// Example:
// unmix("123456") ➞ "214365"
//
// unmix("hTsii  s aimex dpus rtni.g") ➞ "This is a mixed up string."
//
// unmix("badce") ➞ "abcde"

String unmix(String word) {
  String result = '';
  for (int i = 0; i< word.length; i = i+2){
    result = result + word [i + 1] + word [i];
  }
  if(word.length % 2 != 0){
    result += word[word.length - 1];
  }
  return result;
}
