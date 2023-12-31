import 'package:word_search_safety/word_search_safety.dart';


void main() {
  final List <String> wordList = ["Hello", "Hi", "Pretty"];
  final WSSettings settings = WSSettings(width: 10, height: 10, orientations: List.from([
    WSOrientation.horizontal,
    WSOrientation.vertical,
    WSOrientation.diagonal,

  ]));


  final WordSearchSafety wordSearch = WordSearchSafety();

  final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(wordList, settings);

  if(newPuzzle.errors!.isEmpty) {
    print("Puzzle 2D List ");
    print(newPuzzle.toString());


  } else {
    print("Error");
    print(newPuzzle.errors);
  }


  final WSSolved solved = wordSearch.solvePuzzle(newPuzzle.puzzle!, ["hello", "hi"]);
  print("Found words");

  for(var element in solved.found!) {
    print("word : ${element.word}, orientation: ${element.orientation}");
    print("x : ${element.x}, y: ${element.y}");
  }

  print("Not found words");
  for(var element in solved.notFound!) {
    print("word: ${element}");
  }
}