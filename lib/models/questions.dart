class Questions {
  final String category;
  final String type;
  final String question;
  final String difficulty;
  final String correctAnswer;
  final List<String> incorrectAnswers;

  Questions({
    required this.category,
    required this.type,
    required this.question,
    required this.difficulty,
    required this.correctAnswer,
    required this.incorrectAnswers,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'category': category});
    result.addAll({'type': type});
    result.addAll({'question': question});
    result.addAll({'difficulty': difficulty});
    result.addAll({'correct_answer': correctAnswer});
    result.addAll({'incorrect_answers': incorrectAnswers});

    return result;
  }

  factory Questions.fromMap(Map<String, dynamic> map) {
    return Questions(
      category: map['category'] ?? '',
      type: map['type'] ?? '',
      question: map['question'] ?? '',
      difficulty: map['difficulty'] ?? '',
      correctAnswer: map['correct_answer'] ?? '',
      incorrectAnswers: List<String>.from(map['incorrect_answers']),
    );
  }

  Questions copyWith({
    String? category,
    String? type,
    String? question,
    String? difficulty,
    String? correctAnswer,
    List<String>? incorrectAnswers,
  }) {
    return Questions(
      category: category ?? this.category,
      type: type ?? this.type,
      question: question ?? this.question,
      difficulty: difficulty ?? this.difficulty,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      incorrectAnswers: incorrectAnswers ?? this.incorrectAnswers,
    );
  }
}
