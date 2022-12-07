import 'package:flutter/cupertino.dart';

import '../contants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: kPrimaryDarkenedColor,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:  AssetImage("Assets/rihanna.png", ), fit: BoxFit.cover),
          ),
          child: Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "RIHANNA Concert",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: kSecondaryColor),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ankara",
                        style: TextStyle(
                            fontSize: 13,
                            color: kSecondaryColor),
                      ),
                      Text(
                        "22 Oct 2022",
                        style: TextStyle(
                            fontSize: 13,
                            color: kSecondaryColor),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              )),
        )

    );

  }
}
