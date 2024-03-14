import 'package:flutter/material.dart';

class FloatingBottomTabNavigator extends StatefulWidget {
  @override
  _FloatingBottomTabNavigatorState createState() =>
      _FloatingBottomTabNavigatorState();
}

class _FloatingBottomTabNavigatorState
    extends State<FloatingBottomTabNavigator> {
  int _selectedIndex = 0; // Keep track of the selected tab index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 30,
          right: 0,
          
          child: Container(
            height: 50,
            
            

            decoration: BoxDecoration(
              color: Color.fromARGB(146, 255, 255, 255),
              borderRadius: BorderRadius.circular(40),
              border: Border.all(width: 1)
              
            ),
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildIconButton(Icons.home, 0),
               
                _buildIconButton(Icons.person, 1),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIconButton(IconData icon, int index) {
    return InkWell(
      onTap: () {
        _onItemTapped(index);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
         
         
        ),
        child: Icon(
          icon,
          color: _selectedIndex == index ? Color.fromARGB(255, 16, 16, 16) : const Color.fromARGB(255, 12, 12, 12),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your existing scaffold content
      body: Container(),
      floatingActionButton: FloatingBottomTabNavigator(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}
