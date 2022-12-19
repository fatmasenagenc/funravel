import 'package:flutter/material.dart';
import '../../constants/contants.dart';

class CreateGroupInv extends StatefulWidget {
  @override
  _CreateGroupInv createState() => _CreateGroupInv();
}

class _CreateGroupInv extends State<CreateGroupInv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating Group Invitation', style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w800,
            color: kPrimaryDarkenedColor)),
        centerTitle: true,
      ),
        body:
        Padding(
            padding: const EdgeInsets.only(top: 70, left: 10, right:10),
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
          child: Column(
            children:[
              Container(

                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                height: 40,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),

                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: TextField(
                      maxLength: 100,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
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
                          hintText: "Set a Title",
                          hintStyle: TextStyle(
                              color: kPrimaryDarkenedColor.withOpacity(0.5),
                              fontWeight: FontWeight.bold)
                      )
                    // controller and etc.
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                height: 150,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: TextField(
                      maxLength: 500,
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
                          hintText: "Write an explanation",
                          hintStyle: TextStyle(
                              color: kPrimaryDarkenedColor.withOpacity(0.5),
                              fontWeight: FontWeight.bold)
                      )
                    // controller and etc.
                  ),
                ),
              ),
          SizedBox(height:70, width:20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kSecondaryColor,
              fixedSize: const Size(200, 50),
              //padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
            onPressed: () =>
            {}, child: Text('Create',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryDarkenedColor)),
          ),

            ]
          )
    )
        )
    );
  }

  groupList(){

  }
}