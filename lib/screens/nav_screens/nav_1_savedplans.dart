import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/contants.dart';
class NavSavedPlans extends StatefulWidget {
  const NavSavedPlans({Key? key}) : super(key: key);

  @override
  State<NavSavedPlans> createState() => _NavSavedPlansState();
}

class _NavSavedPlansState extends State<NavSavedPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text("Saved Travel Plans"),
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(right: 10, left: 10),

        child: Column(
        children : [
          SizedBox(
            height: 10,
          ),
        Container(
          color:Color(0x16942911),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Adele Concert',style: TextStyle(
              color: kPrimaryDarkenedColor,
              fontSize:18,
              fontWeight: FontWeight.bold,

            ),),
            Text('at Royal Albert Hall London',style: TextStyle(
              color: kPrimaryDarkenedColor,
              fontSize:16,

            ),),
            Text('13 January Fri 22.00',style: TextStyle(
              color: kPrimaryDarkenedColor,
              fontSize:14,

            ),),

            SizedBox(
              height: 10,
            ),Container(
              child: Row(
                children:[
                  Text('Travel Preference',style: TextStyle(
                    color: kPrimaryDarkenedColor,
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
                    color: kPrimaryDarkenedColor,
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

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              child: Row(
                children:[
                  Container(
                    width:390,
                    height:44,
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
                      child: Text('London',style: TextStyle(
                        color: kPrimaryColor,

                      ),),


                      onPressed: () {},
                    ),




                  ),

                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children:[
                  Container(
                    width:390,
                    height:44,
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
                      child: Text('10.01.2023 - 15.01.2023',style: TextStyle(
                        color: kPrimaryColor,

                      ),),


                      onPressed: () {},
                    ),




                  ),

                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children:[
                  Container(
                    width:390,
                    height:44,
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
                      child: Text('5 starred hotel',style: TextStyle(
                        color: kPrimaryColor,

                      ),),


                      onPressed: () {},
                    ),




                  ),


                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children:[
                  Container(
                    width:390,
                    height:44,
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
                      child: Text('Plane',style: TextStyle(
                        color: kPrimaryColor,

                      ),),


                      onPressed: () {},
                    ),




                  ),


                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children:[
                  SizedBox(
                    width: 240,
                  ),
                  Container(
                    width:150,
                    height:44,
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

          ],
        ),
        ),
          SizedBox(
            height: 20,
          ),
          Container(
            color:Color(0x16942911),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('SZA Concert',style: TextStyle(
                  color: kPrimaryDarkenedColor,
                  fontSize:18,
                  fontWeight: FontWeight.bold,

                ),),
                Text('at Kaufmann Concert Hall New York',style: TextStyle(
                  color: kPrimaryDarkenedColor,
                  fontSize:16,

                ),),
                Text('20 January Fri 20.00',style: TextStyle(
                  color: kPrimaryDarkenedColor,
                  fontSize:14,

                ),),

                SizedBox(
                  height: 10,
                ),Container(
                  child: Row(
                    children:[
                      Text('Travel Preference',style: TextStyle(
                        color: kPrimaryDarkenedColor,
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
                          child: Text('Minimum transfer',style: TextStyle(
                            color: kPrimaryColor,

                          ),),


                          onPressed: () {},
                        ),




                      ),
                      SizedBox(
                        width: 40,
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
                        color: kPrimaryDarkenedColor,
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
                          child: Text('Close to Venue',style: TextStyle(
                            color: kPrimaryColor,

                          ),),


                          onPressed: () {},
                        ),




                      ),
                      SizedBox(
                        width: 40,
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  child: Row(
                    children:[
                      Container(
                        width:390,
                        height:44,
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
                          child: Text('New York',style: TextStyle(
                            color: kPrimaryColor,

                          ),),


                          onPressed: () {},
                        ),




                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children:[
                      Container(
                        width:390,
                        height:44,
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
                          child: Text('18.01.2023 - 22.01.2023',style: TextStyle(
                            color: kPrimaryColor,

                          ),),


                          onPressed: () {},
                        ),




                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children:[
                      Container(
                        width:390,
                        height:44,
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
                          child: Text('5 starred hotel',style: TextStyle(
                            color: kPrimaryColor,

                          ),),


                          onPressed: () {},
                        ),




                      ),


                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children:[
                      Container(
                        width:390,
                        height:44,
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
                          child: Text('Plane',style: TextStyle(
                            color: kPrimaryColor,

                          ),),


                          onPressed: () {},
                        ),




                      ),


                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    children:[
                      SizedBox(
                        width: 240,
                      ),
                      Container(
                        width:150,
                        height:44,
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

              ],
            ),
          ),
  ],
      ),

    ),
    );
  }
}
