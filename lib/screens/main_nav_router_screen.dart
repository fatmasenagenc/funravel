import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funravel_v0/constants/contants.dart';
import 'package:funravel_v0/screens/location_screen.dart';
import 'package:funravel_v0/screens/select_date_screen.dart';
import 'package:funravel_v0/screens/nav_screens/nav_3_social.dart';
import 'package:funravel_v0/screens/nav_screens/nav_1_savedplans.dart';
import 'package:funravel_v0/screens/nav_screens/nav_4_groupschats.dart';
import 'package:funravel_v0/screens/nav_screens/nav_5_profile.dart';

import 'nav_screens/nav_2_home.dart';

class MainNavRouterScreen extends StatefulWidget {
  const MainNavRouterScreen({Key? key}) : super(key: key);

  @override
  State<MainNavRouterScreen> createState() => _MainNavRouterScreenState();
}

class _MainNavRouterScreenState extends State<MainNavRouterScreen> {
  PageController _page_controller = PageController( initialPage: 1);
  int _current_page = 1;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _page_controller.addListener(() {
        if(_page_controller.page != null && mounted){
          print("setting new state ${_page_controller.page}");
          setState((){ _current_page = _page_controller.page!.round();});
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    if(_page_controller.hasClients){
      _page_controller.dispose();
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Expanded(
             child: PageView(
                 controller: _page_controller,
                 children: [
                   NavSavedPlans(),
                   NavHomeScreen(),
                   NavSocial(),
                   NavGroupsChats(),
                   NavProfile(),
                 ],
             ),
           ),
           Container(
             width: double.infinity,
             height: 110,
             padding: EdgeInsets.only( left: 20, right: 20, top: 15),
             decoration: BoxDecoration(
               color: kPrimaryDarkenedColor,
               borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15),),
               boxShadow: [
                 BoxShadow(
                  color: kPrimaryColor.withOpacity(1),
                   spreadRadius: 20,
                   blurRadius: 20
                 )
                ]
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 _buildNavIcon(0, _current_page, (){ setState(() {_page_controller.jumpToPage(0);});}),
                 _buildNavIcon(1, _current_page, (){ setState(() {_page_controller.jumpToPage(1);});}),
                 _buildNavIcon(2, _current_page, (){ setState(() {_page_controller.jumpToPage(2);});}),
                 _buildNavIcon(3, _current_page, (){ setState(() {_page_controller.jumpToPage(3);});}),
                 _buildNavIcon(4, _current_page, (){ setState(() {_page_controller.jumpToPage(4);});}),
               ],
             ),
           )
         ],
       ),
    );
  }

  Widget _buildNavIcon( int index,  int currentPage, onTapFunction ) {
    String _getNavIconUrl( int index, bool selected){
      switch(index){
        case 0 : return selected ? "Assets/icons/nav_icons/saved_plans_selected.svg" : "Assets/icons/nav_icons/saved_plans.svg";
        case 1 : return selected ? "Assets/icons/nav_icons/home_selected.svg"        : "Assets/icons/nav_icons/home.svg";
        case 2 : return selected ? "Assets/icons/nav_icons/social_selected.svg"      : "Assets/icons/nav_icons/social.svg";
        case 3 : return selected ? "Assets/icons/nav_icons/chats_selected.svg"       : "Assets/icons/nav_icons/chats.svg";
        case 4 : return selected ? "Assets/icons/nav_icons/profile_selected.svg"       : "Assets/icons/nav_icons/profile.svg";
        default : return "Assets/icons/nav_icons/home.svg";
      }
    }

    String _getNavTitle( int index, bool selected){
      switch(index){
        case 0 : return "Saved Plans";
        case 1 : return "Home";
        case 2 : return "Social";
        case 3 : return "Groups Chats";
        case 4 : return  "Profile";
        default : return  "";
      }
    }

    return InkWell(
      onTap: () => onTapFunction(),
      child: Column(
                   children: [
                     Container(
                       width: 40,
                       height: 40,
                       child: SvgPicture.asset(_getNavIconUrl(index, index == currentPage)),
                     ),
                     SizedBox(height: 5,),
                     Text(_getNavTitle(index, index == currentPage), style: TextStyle(fontSize: 10, color: kPrimaryLightenedColor.withOpacity( index == currentPage ? 1 : 0.5), fontWeight:  FontWeight.bold ),)
                   ],
                 ),
    );
  }

}
