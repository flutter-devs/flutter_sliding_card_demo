import 'package:flutter/material.dart';
import 'package:sliding_card/sliding_card.dart';
import 'device_size.dart';
import 'interview_card.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SlidingCardController controller ;
  @override
  void initState() {
    super.initState();
    controller = SlidingCardController();
  }
  @override
  Widget build(BuildContext context) {
    DeviceSize().init(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Flutter Sliding Card  Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InterviewCard(
              onTapped: () {
                if(controller.isCardSeparated == true)
                {
                  controller.collapseCard();
                }
                else
                {
                  controller.expandCard();
                }
              },
              slidingCardController: controller,
            )
          ],
        ),
      ), 
    );
  }
}
