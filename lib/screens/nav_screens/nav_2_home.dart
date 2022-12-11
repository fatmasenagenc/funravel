import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/contants.dart';
import '../../widgets/card_widget.dart';



class NavHomeScreen extends StatefulWidget {
  const NavHomeScreen({Key? key}) : super(key: key);

  @override
  State<NavHomeScreen> createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(right: 10, left: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(right: 20, left: 10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: kSecondaryColor,
                child: TextField(
                  controller: TextEditingController(),
                  style: TextStyle( color: kPrimaryDarkenedColor, fontWeight: FontWeight.bold),
                  cursorColor: Colors.black,
                  onChanged: (input) {
                    print("changed $input");
                  },
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 0, color: Colors.white.withOpacity(0)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 0,
                          color: Colors.white.withOpacity(0)), //<-- SEE HERE
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.white.withOpacity(0)), //<-- SEE HERE
                    ),
                    hintText: "Find Your Artist",
                    hintStyle: TextStyle( color: kPrimaryDarkenedColor.withOpacity(0.5), fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                padding:
                EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 15),
                margin: EdgeInsets.symmetric(horizontal: 10),

                color: kSecondaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Results",
                      style: TextStyle(
                          color: kPrimaryDarkenedColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SvgPicture.asset("Assets/icons/filter.svg", width: 25,)
                  ],
                ),
              ),
              GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1 / 1.3,
                  physics: NeverScrollableScrollPhysics(),

                      children: [
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                        CardWidget(),
                      ]),
            ],
          ),
        ),
    );
  }
}
