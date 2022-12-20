import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/contants.dart';

class SuggestPlan extends StatefulWidget {
  const SuggestPlan({Key? key}) : super(key: key);

  @override
  State<SuggestPlan> createState() => _SuggestPlan();
}

class _SuggestPlan extends State<SuggestPlan> {
  String _selectedCountry = "";


  void _findCountry() async {


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Go back to the previous screen
          },
        ),
        title: Text("Suggest a Travel Plan"),
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(right: 10, left: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
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
                    hintText: "Select location",
                    hintStyle: TextStyle(
                        color: kPrimaryDarkenedColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20,
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
                    hintText: "Select Start - End Date",
                    hintStyle: TextStyle(
                        color: kPrimaryDarkenedColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20,
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
                    hintText: "Select Star Rate of Hotel",
                    hintStyle: TextStyle(
                        color: kPrimaryDarkenedColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20,
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
                    hintText: "Select Transportation Type",
                    hintStyle: TextStyle(
                        color: kPrimaryDarkenedColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold)),
              ),


            ),
            SizedBox(
              height: 15,
            ),Container(
              child: Row(
                children:[
                  Text('Travel Preference',style: TextStyle(
                    color: kSecondaryColor,
                    fontSize:18,
                      fontWeight: FontWeight.bold,

                  ),),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
        Container(
          child: Row(
            children:[
              Container(
                width:160,
                height:40,
                child:
                ElevatedButton(

                  style: ButtonStyle(

                      backgroundColor: MaterialStatePropertyAll<Color>(
                          kSecondaryColor),



                  ),
                  child: Text('Best Price',style: TextStyle(
                    color: kPrimaryColor,

                  ),),


                  onPressed: () {},
                ),




              ),
              SizedBox(
                width: 40,
              ),
              Container(
                width:181,
                height:44,
                child:
                ElevatedButton(

                  style: ButtonStyle(

                      backgroundColor: MaterialStatePropertyAll<Color>(
                          kSecondaryColor),



                  ),
                  child: Text('Shortest Travel Time',style: TextStyle(
                    color: kPrimaryColor,


                  ),),


                  onPressed: () {},
                ),




              ),
            ],
          ),
        ),
            SizedBox(
              height: 10,
            ),
            Container(

              child: Row(
                children:[
            Container(
              height:40,
              width:160,

                child:
                    ElevatedButton(

                      style: ButtonStyle(

                          backgroundColor: MaterialStatePropertyAll<Color>(
                              kSecondaryColor),
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(50, 0, 10, 0))


                      ),
                      child: Text('Minimum Transfers',style: TextStyle(
                        color: kPrimaryColor,

                      ),),


                      onPressed: () {},
                    ),




            ),
              ],
              ),
      ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                children:[
                  Text('Hotel Preference',style: TextStyle(
                    color: kSecondaryColor,
                    fontSize:18,
                    fontWeight: FontWeight.bold,

                  ),),

                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              child: Row(
                children:[
                  Container(
                    width:160,
                    height:34,
                    child:
                    ElevatedButton(

                      style: ButtonStyle(

                          backgroundColor: MaterialStatePropertyAll<Color>(
                              kSecondaryColor),



                      ),
                      child: Text('Best Price',style: TextStyle(
                        color: kPrimaryColor,

                      ),),


                      onPressed: () {},
                    ),




                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width:181,
                    height:34,
                    child:
                    ElevatedButton(

                      style: ButtonStyle(

                        backgroundColor: MaterialStatePropertyAll<Color>(
                            kSecondaryColor),



                      ),
                      child: Text('Close to Venue',style: TextStyle(
                        color: kPrimaryColor,


                      ),),


                      onPressed: () {},
                    ),




                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width:140,
              height:54,
              child:
              ElevatedButton(

                style: ButtonStyle(

                  backgroundColor: MaterialStatePropertyAll<Color>(
                      kSecondaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(width: 3, color: Colors.black),
                    ),

                ),
                ),
                child: Text('Make Package',style: TextStyle(
                  color: kPrimaryColor,

                ),),


                onPressed: () {},
              ),




            ),

          ],
        ),
      ),


    );
  }
}
