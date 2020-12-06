import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gameapp/class/game.dart';
import 'package:gameapp/class/review.dart';
import 'package:gameapp/widgets/ratingpanel.dart';
import 'package:gameapp/widgets/txtbox.dart';
import 'package:gameapp/generated/l10n.dart';
class ReviewPage extends StatefulWidget {
  ReviewPage({this.game,this.onFinish});
  final Game game;
  final Function() onFinish;
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  int rating = 0;
  int maxLength = 140;
  int reviewLength = 0;
  String _review;
  GlobalKey<ScaffoldState> _scaffold = GlobalKey();
  ScrollController controller = ScrollController(keepScrollOffset: true,initialScrollOffset: 0);
  void _starChange(int index) {
    setState(() {
      rating = index;
    });
    // print(rating);
  }

  void _reviewChange(String review) {
    setState(() {
      reviewLength = review.length;
      
    });
    setState((){
      _review = review;
    });
  }
  void _postReview(BuildContext context)async{
    Map<String, dynamic> r = {
      "ReviewText": _review,
      "StarRating": rating
    };
    if(reviewLength==0){
      // Scaffold.of(context).showSnackBar(
      //   SnackBar(content: Text("Hi"),)
      // );
      
      _scaffold.currentState.showSnackBar(
        SnackBar(content: Text(S().notice1),)
      );
    }else if(rating==0){
      _scaffold.currentState.showSnackBar(
        SnackBar(content: Text(S().notice2),)
      );
    }
    else if(rating==0&&reviewLength==0){
    _scaffold.currentState.showSnackBar(
        SnackBar(content: Text(S().notice3),)
      );
    }
    else{
      postReview(r, widget.game.gameId)
        .then((value){ 
          Navigator.pop(context);
        })
        .catchError((error) {
          print(error.toString());
        });
    }
  }
  @override dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // if(MediaQuery.of(context).viewInsets.bottom>0){
          
    //     controller.animateTo(controller.position.maxScrollExtent,duration:Duration(milliseconds: 300),curve:Curves.easeInOut);
    // }else{
    //     controller.animateTo(controller.position.minScrollExtent, duration:Duration(milliseconds: 300),curve:Curves.easeInOut);
    // }
 
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key:_scaffold,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal:30),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          // padding: EdgeInts.only(top:20),
          child: SingleChildScrollView(
                      
                      controller: controller,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(S().notice4)),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 90,
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        widget.game.gameTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2,
                      ))),
                  RatingPanel(
                    onChange: _starChange,
                  ),
                  Container(
                      
                      padding: EdgeInsets.only(top: 30),
                      child: Listener(
                        onPointerDown: (event)async{
                          await Future.delayed(Duration(milliseconds: 1000));
                          controller.jumpTo(controller.position.maxScrollExtent);
                          },
                                              child: MultiLineTextBox(
                          S().notice5,
                          height: (MediaQuery.of(context).size.height-MediaQuery.of(context).viewInsets.vertical)/6,
                          maxLength: maxLength,
                          onChanged: _reviewChange,
                        ),
                      )),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: Text(
                        reviewLength.toString() + "/" + maxLength.toString()),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical:10),
                      width: 300,
                      height: 50,
                      child: RaisedButton(
                          onPressed: (){_postReview(context);},
                          color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.rate_review,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  S().notice6,
                                  style: TextStyle(color: Colors.black),
                                ),
                              )
                            ],
                          ),
                       )),
                ]),
          ),
        ),
      ),
    );
  }
}
