import 'package:educube/Constants/TextStyle.dart';
import 'package:educube/Constants/constants.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: Border.all(),

      backgroundColor:
          appColor, // Change this to your preferred background color
      width: 180,

      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 35),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Username
                const Text(
                  'Srisivas',
                  style: TextStyle(
                    color: black,
                    letterSpacing: 0.2,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),

                // Close icon
                IconButton(
                  icon: SizedBox(
                    width: 15, // Change the width to your desired value
                    height: 15, // Change the height to your desired value
                    child: Image.asset(
                      'assets/images/menu.png', // Change 'assets/your_image.png' to the path of your image
                      width:
                          -10, // Optional: you can set width and height again here to ensure consistency
                      height: -10,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const Align(
              alignment: Alignment(-0.77, -1.0),
              child: Text(
                'Teacher',
                style: TextStyle(
                  color: black,
                  letterSpacing: 0.2,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            _buildMenuItem(0, Icons.calendar_today, 'Attendance'),
            _buildMenuItem(1, Icons.menu_book, 'Performance'),
            _buildMenuItem(2, Icons.star, 'Rating'),
            _buildMenuItem(3, Icons.directions_bus, 'Transport'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(int index, IconData iconData, String title) {
    return ListTile(
      leading: Icon(
        iconData,
        color: _selectedIndex == index ? darkBlue : black,
      ),
      title: Text(title,
          style: TextStyles.customTextStyle(
              color: _selectedIndex == index ? darkBlue : black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'poppins')),
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        // Handle menu item tap here
      },
    );
  }
}
