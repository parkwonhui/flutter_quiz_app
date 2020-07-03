import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/model/model_quiz.dart';

class QuizScreen extends StatefulWidget {
  List<Quiz> quizs;
  QuizScreen({this.quizs});
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<int> _answers = [-1, -1, -1];
  List<bool> _answerState = [false, false, false, false]; // 보기가 눌렸는지 기록
  int _currentIndex; // 현재 보고 있는 문제

  @override
  Widget build(BuildContext context) {}
}
