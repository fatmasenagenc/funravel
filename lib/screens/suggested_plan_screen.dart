import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/contants.dart';
import 'package:funravel_v0/screens/select_date_screen.dart';
import 'package:funravel_v0/screens/location_screen.dart';
class SuggestPlan extends StatefulWidget {
  const SuggestPlan({Key? key}) : super(key: key);

  @override
  State<SuggestPlan> createState() => _SuggestPlan();
}

class _SuggestPlan extends State<SuggestPlan> {
  String _selectedCountry = "";


  void _findCountry() async {


  }

  String dropdownValue = 'Plane';

  @override


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
              child: buildCustomButton(title: "Select Location", function: (){

                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Location()));

              },),

            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: buildCustomButton(title: "Select start-end date", function: (){

                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SelectDate()));

              },),

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
              child: Row(
                children:[
                  Text('Transportation',style: TextStyle(
                    color: kSecondaryColor,
                    fontSize:18,
                    fontWeight: FontWeight.bold,

                  ),),

                ],
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

              child: DropdownButton<String>(
                // Step 3
                dropdownColor: kSecondaryColor,
                value: dropdownValue,
                // Step 4.
                items: <String>['Plane', 'Train', 'Bus']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryDarkenedColor.withOpacity(0.5),
                          fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
                // Step 5.
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
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
<<<<<<< HEAD
                      fontWeight: FontWeight.bold,
=======
                    fontWeight: FontWeight.bold,
>>>>>>> funravel_v0_gulin

                  ),),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
<<<<<<< HEAD
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
=======
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

>>>>>>> funravel_v0_gulin



                  ),
<<<<<<< HEAD
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
=======
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

>>>>>>> funravel_v0_gulin



                  ),
<<<<<<< HEAD
                  child: Text('Shortest Travel Time',style: TextStyle(
                    color: kPrimaryColor,


                  ),),


                  onPressed: () {},
                ),




              ),
            ],
          ),
        ),
=======
                ],
              ),
            ),
>>>>>>> funravel_v0_gulin
            SizedBox(
              height: 10,
            ),
            Container(

              child: Row(
                children:[
<<<<<<< HEAD
            Container(
              height:40,
              width:160,

                child:
=======
                  Container(
                    height:40,
                    width:160,

                    child:
>>>>>>> funravel_v0_gulin
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




<<<<<<< HEAD
            ),
              ],
              ),
      ),
=======
                  ),
                ],
              ),
            ),
>>>>>>> funravel_v0_gulin
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

<<<<<<< HEAD
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              kSecondaryColor),
=======
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            kSecondaryColor),
>>>>>>> funravel_v0_gulin



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
<<<<<<< HEAD
                ),
=======
>>>>>>> funravel_v0_gulin
                child: Text('Make Package',style: TextStyle(
                  color: kPrimaryColor,

                ),),


                onPressed: () {},
              ),




<<<<<<< HEAD
=======
            ),
            SizedBox(
              height: 30,
>>>>>>> funravel_v0_gulin
            ),

          ],
        ),
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

