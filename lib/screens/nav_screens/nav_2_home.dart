import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:funravel_v0/repositories/api_requests.dart';
import 'package:funravel_v0/screens/concert_screen.dart';

import '../../constants/contants.dart';
import '../../models/concert_model.dart';
import '../../widgets/card_widget.dart';

class NavHomeScreen extends StatefulWidget {
  const NavHomeScreen({Key? key}) : super(key: key);

  @override
  State<NavHomeScreen> createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  List<Concert> concerts = <Concert>[];
  int page = 1;

  _loadData({bool nextPage = false}) async {
    if (nextPage) {
      page++;
    }

    List<Concert>? loadedConcerts = await getConcertsData(page);
    if (loadedConcerts != null) {
      concerts.addAll(loadedConcerts);
      setState(() {});
    }
  }

  @override
  void initState() {
    //waits until the screen is built then call load data
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _loadData();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                style: TextStyle(
                    color: kPrimaryDarkenedColor, fontWeight: FontWeight.bold),
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
                    hintStyle: TextStyle(
                        color: kPrimaryDarkenedColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold)),
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
                  SvgPicture.asset(
                    "Assets/icons/filter.svg",
                    width: 25,
                  )
                ],
              ),
            ),
            concerts.isEmpty
                ? Column(
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Loading... :)",
                        style: TextStyle(
                            color: kPrimaryDarkenedColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: concerts.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 250),
                    itemBuilder: (BuildContext context, int index) =>
                        CardWidget(
                      concert: concerts[index], function: (){ Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ConcertScreen(concert : concerts[index])));},
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
