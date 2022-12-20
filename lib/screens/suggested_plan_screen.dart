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
            Container(

              child: ElevatedButton(
                style: ButtonStyle(

                    backgroundColor: MaterialStatePropertyAll<Color>(
                        kSecondaryColor),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(10, 10, 10, 10))


                ),
                child: Text('Best Price',style: TextStyle(
                  color: kPrimaryColor,

                ),),


                onPressed: () {},
              ),

            ),
            ElevatedButton(
              style: ButtonStyle(

                  backgroundColor: MaterialStatePropertyAll<Color>(
                      kSecondaryColor),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(10, 10, 10, 10))


              ),
              child: Text('Minimum Transfers',style: TextStyle(
                color: kPrimaryColor,

              ),),


              onPressed: () {},
            )
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

