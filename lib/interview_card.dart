
import 'package:flutter/material.dart';
import 'package:sliding_card/sliding_card.dart';
import 'interview_back_card.dart';
import 'interview_front_card.dart';
import 'device_size.dart';

class InterviewCard extends StatefulWidget {
  const InterviewCard({
    Key key,
    this.slidingCardController , @required this.onTapped
  }) : super(key: key);
 
  final  SlidingCardController slidingCardController;
  final Function onTapped;

  @override
  _InterviewCardState createState() => _InterviewCardState();
}

class _InterviewCardState extends State<InterviewCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onTapped();
      },
          child: SlidingCard(
        slimeCardElevation: 0.5,
        slidingAnimationReverseCurve: Curves.bounceInOut,
        cardsGap: DeviceSize.safeBlockVertical,
        controller: widget.slidingCardController,
        slidingCardWidth: DeviceSize.horizontalBloc * 90,
        visibleCardHeight: DeviceSize.safeBlockVertical * 27,
        hiddenCardHeight: DeviceSize.safeBlockVertical * 15,
        frontCardWidget: InterviewFrontCard(
          candidateName: '@Astin',
          candidateSurname: 'Martin',
          interviewDate: '9 March 2021 ',
          interviewTime: '2:30Pm',
          onInfoTapped: () {
            print('info pressed');
            widget.slidingCardController.expandCard();
          },
          onDecline: () {
            print('Declined');
          },
          onAccept: () {
            print('Accepted');
          },
          onCloseButtonTapped: (){
            widget.slidingCardController.collapseCard();
          },
        ),
        backCardWidget:InterviewBackCard(
          onPhoneTapped: (){},
          companyInfo: "FlutterDevs specializes in creating cost-effective and efficient "
              "applications with our perfectly crafted."
        ),
      ),
    );
  }
}



