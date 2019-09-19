import 'package:flutter/material.dart';
import 'category_value.dart';
import 'question.dart';
import 'quiz_page.dart';
import 'package:geniusbee/widget/error.dart';
import 'dart:io';
import 'package:geniusbee/widget/Quiz_widget/api_prodiver.dart';

class QuizOptionsDialog extends StatefulWidget {
  final Category category;

  const QuizOptionsDialog({Key key, this.category}) : super(key: key);

  @override
  _QuizOptionsDialogState createState() => _QuizOptionsDialogState();
}

class _QuizOptionsDialogState extends State<QuizOptionsDialog> {
  int _noOfQuestions;
  String _difficulty;
  bool processing;

  @override
  void initState() { 
    super.initState();
    _noOfQuestions = 10;
    _difficulty = "easy";
    processing = false;
  }

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView  (
        child: Column(
          
          mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[  
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.all(15.0),
              color: Colors.deepPurple,
              child: Text(widget.category.name, style: Theme.of(context).textTheme.title.copyWith(),),
            ),
            SizedBox(height: 20.0),
            Text("Select Number of Questions", style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                runSpacing: 16.0,
                spacing: 22.0,
                children: <Widget>[
                  SizedBox(width: 0.0),
                  ActionChip(
                    label: Text("5"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _noOfQuestions == 5 ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectNumberOfQuestions(5),
                  ),
                  ActionChip(
                    label: Text("10"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _noOfQuestions == 10 ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectNumberOfQuestions(10),
                  ),
                  ActionChip(
                    label: Text("15"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _noOfQuestions == 15 ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectNumberOfQuestions(15),
                  ),
                  ActionChip(
                    label: Text("20"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _noOfQuestions == 20 ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectNumberOfQuestions(20),
                  ),
                  ActionChip(
                    label: Text("30"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _noOfQuestions == 30 ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectNumberOfQuestions(30),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Text("Select Difficulty",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                runSpacing: 16.0,
                spacing: 22.0,
                children: <Widget>[
                  SizedBox(width: 0.0),
                  ActionChip(
                    label: Text("Any"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _difficulty == null ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectDifficulty(null),
                  ),
                  ActionChip(
                    label: Text("Easy"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _difficulty == "easy" ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectDifficulty("easy"),
                  ),
                  ActionChip(
                    label: Text("Medium"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _difficulty == "medium" ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectDifficulty("medium"),
                  ),
                  ActionChip(
                    label: Text("Hard"),
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: _difficulty == "hard" ? Colors.deepPurple : Colors.grey.shade600,
                    onPressed: () => _selectDifficulty("hard"),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 15.0),
            processing ? CircularProgressIndicator() : RaisedButton(
              child: Text("Start Quiz"),
              shape: StadiumBorder(
               side: BorderSide(
                color: Colors.white,
               width: 2.0,
               ),
              ),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              onPressed: _startQuiz,
            ),
            SizedBox(height: 20.0),
          ],
        ),
      );
  }

  _selectNumberOfQuestions(int i) {
    setState(() {
      _noOfQuestions = i;
    });
  }

  _selectDifficulty(String s) {
    setState(() {
      _difficulty=s;
    });
  }

  
  void _startQuiz() async {
    setState(() {
      processing=true;
    });
    try {
      List<Question> questions =  await getQuestions(widget.category, _noOfQuestions, _difficulty);
      Navigator.pop(context);
      if(questions.length < 1) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => ErrorPage(message: "Try Again!!",)
        ));
        return;
      }
      Navigator.push(context, MaterialPageRoute(
        builder: (_) => QuizPage(questions: questions, category: widget.category,)
      ));
    }
    on SocketException catch (_) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (_) => ErrorPage(message: "Can't reach the servers, \n Please check your internet connection.",)
      ));
    } catch(e){
      print(e.message);
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (_) => ErrorPage(message: "Unexpected error trying to connect to the API",)
      ));
    }
    setState(() {
      processing=false;
    });
  }
}