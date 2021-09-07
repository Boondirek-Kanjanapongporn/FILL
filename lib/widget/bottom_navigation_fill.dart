import 'package:fill/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationFill extends StatefulWidget {
  const BottomNavigationFill({Key? key}) : super(key: key);

  @override
  _BottomNavigationFillState createState() => _BottomNavigationFillState();
}

class _BottomNavigationFillState extends State<BottomNavigationFill> {
  int _selectedIndex = 0;

  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        decoration: BoxDecoration(
          color: mFillColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        ),
        child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: _selectedIndex == 0
                      ? new SvgPicture.asset('assets/icons/home_colored.svg')
                      : new SvgPicture.asset('assets/icons/home.svg'),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 1
                      ? new SvgPicture.asset('assets/icons/order_colored.svg')
                      : new SvgPicture.asset('assets/icons/order.svg'),
                  label: 'Orders'),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 2
                      ? new SvgPicture.asset('assets/icons/watch_colored.svg')
                      : new SvgPicture.asset('assets/icons/watch.svg'),
                  label: 'Inbox'),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 3
                      ? new SvgPicture.asset('assets/icons/account_colored.svg')
                      : new SvgPicture.asset('assets/icons/account.svg'),
                  label: 'Account')
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: mRedColor,
            unselectedItemColor: mSubtitleColor,
            onTap: _onItemTapped,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            showUnselectedLabels: true,
            elevation: 0));
  }
}
