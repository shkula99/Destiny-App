import 'package:destiny_starting_project/story_brain.dart';
import 'package:flutter/material.dart';

//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

void main() => runApp(Destiny());

class Destiny extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();
//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.grey.shade300,
          Colors.pink.shade900,
          Colors.deepPurple
        ])),
        // TODO: Step 1 - Add a linear gradient background to the container, using decoration property which takes a BoxDecoration. You can use Grey (shade 300), Pink (shade 900) and Deep Purple colors.
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    textDirection: TextDirection.rtl,
                    //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    //TODO: Step 30.A - use textDirection to display the text in a Right to Left direction.

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(1);
                    });
                    //Choice 1 made by user.
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    //TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons. (What code should you use to see changes live)
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                    backgroundColor: Colors.purple[700],
                    //TODO: Step 31.A use the shape property with RoundedRectangleBorder to give the text a rounded corner of 22 points.
                  ),
                  child: Text(
                    storyBrain.getChoice1(),
                    textDirection: TextDirection.rtl,
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    //TODO: Step 30.B - use textDirection to display the text in a Right to Left direction.

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this TextButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                   setState(() {
                     storyBrain.nextStory(2);
                   });
                      //Choice 2 made by user.
                      //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                      backgroundColor: Colors.pink,
                      //TODO: Step 31.B use the shape property with RoundedRectangleBorder to give the text a rounded corner of 22 points.
                    ),
                    child: Text(
                      storyBrain.getChoice2(),
                      textDirection: TextDirection.rtl,
                      //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                      //TODO: Step 30.B - use textDirection to display the text in a Right to Left direction.

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps.
