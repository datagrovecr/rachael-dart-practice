void main() {
  String word1 = "Anaconda";
  String word2 = "Flavor";

  print('"$word1" is an isogram: ${isIsogram(word1)}');
  print('"$word2" is an isogram: ${isIsogram(word2)}');
}

bool isIsogram(String str) {
  str = str.toLowerCase();

  List<String> letters = str.split('');

  letters.sort();

  for (int i = 1; i < letters.length; i++) {
    if (letters[i] == letters[i - 1]) {
      return false;
    }
  }
  return true;
}
