import 'package:flutter/material.dart';
import 'question.dart';
import 'check_answers.dart';

class QuizFinishedPage extends StatelessWidget {
  static final String path = "lib/quiz_finished.dart";
  final List<Question> questions;
  final Map<int, dynamic> answers;
  
  QuizFinishedPage({Key key, @required this.questions, @required this.answers}): super(key: key);

  @override
  Widget build(BuildContext context){
    int correct = 0;
    this.answers.forEach((index,value){
      if(this.questions[index].correctAnswer == value)
        correct++;
    });
    final TextStyle titleStyle = TextStyle(
      color: Colors.black87,
      fontSize: 18.0,
      fontWeight: FontWeight.bold
    );
    final TextStyle trailingStyle = TextStyle(
      color: Theme.of(context).primaryColor,
      fontSize: 20.0,
      fontWeight: FontWeight.bold
    );

    final TextStyle incorretanswer = TextStyle(
      color: Colors.redAccent,
      fontSize: 18.0,
      fontWeight: FontWeight.bold
    );

    final TextStyle correctanswer = TextStyle(
      color: Colors.green,
      fontSize: 18.0,
      fontWeight: FontWeight.bold

    );
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Result'),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.white70   
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(18.0),
                  title: Text("Total Questions", style: titleStyle),
                  trailing: Text("${questions.length}", style: trailingStyle),
                ),
              ),
              SizedBox(height: 15.0),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(18.0),
                  title: Text("Result", style: titleStyle),
                  trailing: Text("${correct/questions.length * 100}%", style: trailingStyle),
                ),
              ),
              SizedBox(height: 20.0),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(18.0),
                  title: Text("Correct Answers", style: correctanswer),
                  trailing: Text("$correct", style: correctanswer),
                ),
              ),
              SizedBox(height: 20.0),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(18.0),
                  title: Text("Incorrect Answers", style: incorretanswer),
                  trailing: Text("${questions.length - correct}", style: incorretanswer),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.green.withOpacity(0.7),
                    textColor: Colors.white,
                    child: Text("Back Home"),
                    onPressed: () => Navigator.pop(context),
                  ),
                  RaisedButton(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.deepPurple.withOpacity(0.8),
                    textColor: Colors.white,
                    child: Text("Check Answers"),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CheckAnswersPage(questions: questions, answers: answers,)
                      ));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}