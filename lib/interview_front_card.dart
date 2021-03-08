import 'package:flutter/material.dart';
import 'device_size.dart';

class InterviewFrontCard extends StatefulWidget {
  final String candidateName;
  final String candidateSurname;
  final Function onInfoTapped;
  final Function onCloseButtonTapped;
  final Function onAccept;
  final Function onDecline;
  final String interviewDate;
  final String interviewTime;
  const InterviewFrontCard({
    Key key,
    @required this.onAccept,
    @required this.onDecline,
    @required this.candidateName,
    @required this.onInfoTapped,
    @required this.candidateSurname,
    @required this.interviewDate,
    @required this.interviewTime,
    @required this.onCloseButtonTapped
  }) : super(key: key);
  @override
  _InterviewFrontCardState createState() => _InterviewFrontCardState();
}

class _InterviewFrontCardState extends State<InterviewFrontCard> {
  bool isInfoPressed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Interview Scheduled',
                              style: TextStyle(
                                  fontSize: DeviceSize.safeBlockHorizontal * 4.5,
                                  color: Colors.white),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert,color: Colors.white70,
                            size: DeviceSize.safeBlockHorizontal * 7,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            size: DeviceSize.safeBlockHorizontal * 5,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.interviewDate + ', ' + widget.interviewTime,
                            style: TextStyle(
                                fontSize: DeviceSize.safeBlockHorizontal * 4.7,
                                color: Colors.white70),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: DeviceSize.safeBlockHorizontal * 90,
                      //color: Colors.pink,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: DeviceSize.safeBlockHorizontal * 15,
                              height: DeviceSize.safeBlockVertical * 8,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/devs.jpg')),
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget.candidateSurname,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize:
                                          DeviceSize.safeBlockHorizontal * 4.7,
                                      color: Colors.black87),
                                ),
                                Text(
                                  widget.candidateName,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize:
                                          DeviceSize.safeBlockHorizontal * 4.7,
                                      color: Colors.black87),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: GestureDetector(
                              onTap: (){
                                if(isInfoPressed == true)
                                {
                                  isInfoPressed = false;
                                  widget.onCloseButtonTapped();
                                  setState(() {});
                                }
                                else{
                                  isInfoPressed = true;
                                  widget.onInfoTapped();
                                  setState(() {});
                                }
                              },
                              child: Container(
                                //color: Colors.red,
                                child: isInfoPressed?Transform.rotate(
                                  angle: 0.7777,
                                  child: Icon(
                                  Icons.add_circle,
                                  size: DeviceSize.safeBlockHorizontal * 9,
                                  color: Colors.blue,
                                ),
                                )
                                
                                
                                :Icon(
                                  Icons.info,
                                  size: DeviceSize.safeBlockHorizontal * 9,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        width: DeviceSize.safeBlockHorizontal * 90,
                        //color: Colors.indigo,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: SizedBox(
                                height: DeviceSize.safeBlockVertical * 6,
                                child: RaisedButton(
                                  disabledElevation: 0,
                                  focusElevation: 0,
                                  highlightElevation: 0,
                                  hoverElevation: 0,
                                  elevation: 0.5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textColor: Colors.white,
                                  color: Colors.black,
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(
                                      fontSize:
                                          DeviceSize.safeBlockHorizontal * 5.5,
                                    ),
                                  ),
                                  onPressed: widget.onAccept,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: DeviceSize.safeBlockVertical * 6,
                                child: RaisedButton(
                                  disabledElevation: 0,
                                  focusElevation: 0,
                                  highlightElevation: 0,
                                  hoverElevation: 0,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  textColor: Colors.black26,
                                  color: Color(0xffEBEFFB),
                                  child: Text(
                                    'Decline',
                                    style: TextStyle(
                                      color: Color(0xff878FA6) ,
                                      fontSize:
                                          DeviceSize.safeBlockHorizontal * 5,
                                    ),
                                  ),
                                  onPressed: widget.onDecline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

