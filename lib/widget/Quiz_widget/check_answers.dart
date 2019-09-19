import 'package:flutter/material.dart';
import 'question.dart';

class CheckAnswersPage extends StatelessWidget {
  static final String path = "lib/check_answers.dart";
  final List<Question> questions;
  final Map<int,dynamic> answers;

  const CheckAnswersPage({Key key, @required this.questions, @required this.answers}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Check Answers'),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
       Container(
         height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent,
              Colors.white   
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
       ),
          ListView.builder(
            padding: const EdgeInsets.all(15.0),
              
            itemCount: questions.length+1,
            itemBuilder: _buildItem,

          )
        ],
      ),
    );
  }
  Widget _buildItem(BuildContext context, int index) {
    if(index == questions.length) {
      return RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        
        child: Text("Done"),
        color: Colors.deepPurpleAccent.withOpacity(0.8),
         textColor: Colors.white,
        onPressed: () => Navigator.pop(context),
        

      );
    }

    Question question = questions[index];
    bool correct = question.correctAnswer == answers[index];
    return Card(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0)
        ),
        child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           
          
            Text(question.question, style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18.0
            ),),
            SizedBox(height: 8.0),
            Text("${answers[index]}", style: TextStyle(
              color: correct ? Colors.green : Colors.red,
              fontSize: 18.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 8.0),
            correct ? Container(): Text.rich(TextSpan(
              children: [
                TextSpan(text: "Answer: ", style: TextStyle(
                  fontWeight: FontWeight.bold
                )),
                TextSpan(text:question.correctAnswer , style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade500
                ))
              ]
            ),style: TextStyle(
              fontSize: 16.0
            ),)
          ],
        ),
      ),
    );
  }
}