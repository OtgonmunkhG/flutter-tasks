import 'package:flutter/material.dart';

import '../model/word_search_model.dart';


class WordListRepository {
  final List<WordSearchModel> search_words = [
    WordSearchModel (
      imageURL: "assets/images/mickey.png",
      hiddenWord: ["M", "I", "C", "K", "E", "Y"]
    )
  ];
}