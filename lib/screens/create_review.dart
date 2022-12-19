import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:funravel_v0/service/auth.dart';
import '../../constants/contants.dart';

class CreateReview extends StatefulWidget {
  const CreateReview({Key? key}) : super(key: key);

  @override
  State<CreateReview> createState() => _CreateReviewState();
}

class _CreateReviewState extends State<CreateReview> {
  AuthService _authService = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Creating Review', style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.w800,
              color: kPrimaryDarkenedColor)),
          centerTitle: true,
        ),
      body:
      Padding(
        padding: const EdgeInsets.only(left: 10, right:10),
      child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
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
                    hintText: "Search the artist you want to post about",
                    hintStyle: TextStyle(
                        color: kPrimaryDarkenedColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              padding:
              EdgeInsets.only(top: 10, bottom: 15, right: 15, left: 15),
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: kSecondaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rate your experience!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black)
                  ),
                  RatingBar.builder(
                    unratedColor: Colors.grey,
                    initialRating: 0,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.purple,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                color: kSecondaryColor,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              constraints: BoxConstraints(
                  maxHeight: 250,
                  minHeight: 250,
                  maxWidth: 500,
                  minWidth: 200),

                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                    child: TextField(
                        maxLength: 700,
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      controller: TextEditingController(),
                      style: TextStyle(
                          color: kPrimaryDarkenedColor, fontWeight: FontWeight.bold),
                      cursorColor: Colors.black,
                      onChanged: (input) {
                        print("changed $input");
                      },
                        decoration: InputDecoration(
                            counterStyle: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
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
                            hintText: "Tell us more about the show!",
                            hintStyle: TextStyle(
                                color: kPrimaryDarkenedColor.withOpacity(0.5),
                                fontWeight: FontWeight.bold))
                      // controller and etc.
                    ),
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kSecondaryColor,
                fixedSize: const Size(250, 50)
              ),
              onPressed: () =>
              {}, child: Text('Post Review',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryDarkenedColor)),
            )
        ]
      )
      )
    ));
  }
}