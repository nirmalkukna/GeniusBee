import 'package:flutter/material.dart';
import 'widget/Quiz_widget/category_value.dart';
import 'widget/Quiz_widget/option_page.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Quiz",style: TextStyle(fontSize: 20),),
        titleSpacing: 80,
        backgroundColor: Colors.deepPurpleAccent,
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
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
       ),
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                  
                ),
              ),
                SliverPadding(
                padding: const EdgeInsets.all(10),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0
                    

                  ),
                  delegate: SliverChildBuilderDelegate(
                    _buildCategoryItem,
                    childCount: categories.length,

                  )

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

  Widget _buildCategoryItem(BuildContext context, int index) {
    Category category = categories[index];
    return MaterialButton(
      elevation: 5.0,
      highlightElevation: 10.0,
      onPressed: () => _categoryPressed(context,category),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      color: Colors.white,
      textColor: Colors.black,
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if(category.icon != null)
            Icon(category.icon, color: Colors.indigo.shade900),
          if(category.icon != null)
            SizedBox(height: 15.0),
          Text(
            category.name,
            textAlign: TextAlign.center,
            maxLines: 4,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
        ],
      ),
    );
  }

  _categoryPressed(BuildContext context,Category category) {
    showModalBottomSheet(
      context: context,
      builder: (sheetContext) => BottomSheet(
        backgroundColor: Colors.white60,
        builder: (_) => QuizOptionsDialog(category: category,),
        onClosing: (){},

      ),
      
    );

  }

