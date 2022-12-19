import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funravel_v0/constants/contants.dart';
import 'package:funravel_v0/models/concert_model.dart';
import 'package:funravel_v0/widgets/card_widget.dart';
import 'package:funravel_v0/screens/suggested_plan_screen.dart';

class ConcertScreen extends StatefulWidget {
  final Concert concert;
  const ConcertScreen({Key? key, required this.concert}) : super(key: key);

  @override
  State<ConcertScreen> createState() => _ConcertScreenState();
}

class _ConcertScreenState extends State<ConcertScreen> {
  ScrollController sliverController = ScrollController();
  double appBarOpacity = 0;

  @override
  void initState() {
    super.initState();
    sliverController.addListener(() {
      if(sliverController.offset > 300 ){
        if( appBarOpacity != 100){
          setState((){
            appBarOpacity = 100;
          });
        }
      }else{
        if( appBarOpacity == 100){
          setState((){
            appBarOpacity = 0;
          });
        }
      }
      // appBarOpacity = 300 - sliverController.position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollBehavior: MyBehavior(),
        controller: sliverController,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400.0,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: InkWell(
                onTap: () async {
                  Navigator.pop(context);
                },
                // onTap: (){ Navigator.pushAndRemoveUntil( context, MaterialPageRoute(builder: (context) => MainPage()), (_) => false); },
                child: Icon(
                  Icons.arrow_circle_left_rounded,
                  color:   appBarOpacity == 100 ? kPrimaryDarkenedColor : Colors.white,
                )),
            pinned: true,
            title: AnimatedContainer(
              duration: Duration(milliseconds: 10000),
              child: Text(
                appBarOpacity == 100 ? ( widget.concert.title ?? "" ) : "",
                style: TextStyle(color: kPrimaryDarkenedColor),
              ),
            ),
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              // stretchModes: null,
              background: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: kPrimaryColor,
                      child: CardWidget( concert: widget.concert, function: (){},),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(

              children: [
                SizedBox(height: 20,),
                buildCustomButton(title: "Buy Tickets", function: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SuggestPlan()));

                }, sideWidget: Icon(Icons.link, color: kPrimaryDarkenedColor,)),
                SizedBox(height: 20,),
                buildCustomButton(title: "Create Group Invitation", function: (){}, ),

                SizedBox(height: 20,),

                buildCustomButton(title: "Suggest A Travel Plan", function: (){}, ),
                SizedBox(height: 2000,),

              ],
            ),
          )
        ],
      ),

    );
  }
}

buildCustomButton({ String? title, Function? function, Widget? sideWidget}){
  return InkWell(
    onTap: () => function != null ? function() : null,
    child: Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 35, left: 35),
      color: kSecondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title ?? "", style: TextStyle(color: kPrimaryDarkenedColor, fontSize: 15, fontWeight: FontWeight.bold), ),
          SizedBox(width: 4,),
          sideWidget ?? Container()
        ],
      ),
    ),
  );
}


class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
