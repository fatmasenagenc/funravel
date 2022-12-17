import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/contants.dart';
import '../models/concert_model.dart';

import 'package:intl/intl.dart';

class CardWidget extends StatefulWidget {
  final Concert concert;
  final Function function;

  const CardWidget({Key? key, required this.concert, required this.function}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool ready = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        ready = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.function(),
      child: Stack(
        children: [
          Container(
              width: double.infinity,
              color: kPrimaryDarkenedColor,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.concert.image ?? "Assets/images/rihanna.png",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                      stops: [0,0.1, 0.5],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    )
                  ),
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.concert.title ?? "",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: kSecondaryColor),
                        ),

                        SizedBox( height: 5,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${widget.concert.venue?.country}, ${widget.concert.venue?.state} ",
                              style:
                                  TextStyle(fontSize: 13, fontWeight : FontWeight.bold ,color: kSecondaryColor.withOpacity(0.8)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              getDateFormat(DateTime.parse(widget.concert.startDate ?? "")) ?? "",
                              style: TextStyle(fontSize: 13, color: kSecondaryColor.withOpacity(0.8)),
                            ),
                            Text(
                              getTimeFormat(DateTime.parse(widget.concert.startDate ?? "")) ?? "",
                              style: TextStyle(fontSize: 13, color: kSecondaryColor.withOpacity(0.8)),
                            ),
                          ],
                        ),

                        SizedBox(height: 20,)
                      ],
                    )),
              )),
          AnimatedContainer(
            color: ready ? Colors.transparent : kPrimaryDarkenedColor,
            duration: Duration(milliseconds: 400),
          ),
        ],
      ),
    );
  }


}

getDateFormat(DateTime dt) {
  String date =  "${DateFormat.MMMd().format(dt)} ${DateFormat("yyyy").format(dt)}";

  return "$date";
}

getTimeFormat(DateTime dt) {
  String time =  DateFormat("hh:mm a").format(dt);

  return "$time";
}