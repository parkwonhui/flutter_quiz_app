import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/model/model_quiz.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.deepPurple)),
              width: width * 0.85,
              height: height * 0.5,
              // 강제로 swiper 모션 안됨
              child: Swiper(
                  physics: NeverScrollableScrollPhysics(),
                  loop: false,
                  itemCount: widget.quizs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildQuizCard(widget.quizs[index], width, height);
                  })),
        ),
      ),
    );
  }

  Widget _buildQuizCard(Quiz quiz, double width, double height) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white),
      ),
    );
  }
}
