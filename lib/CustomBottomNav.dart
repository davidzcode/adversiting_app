import 'package:flutter/material.dart';
import 'custom_icons.dart';

class CustomBottomNav extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBairItems = [];

  CustomBottomNav(){
    bottomBairItems.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home,color: Colors.greenAccent,),
            icon: Icon(Icons.home),
            title: Text("") ,
        )
    );

    bottomBairItems.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.pages,color: Colors.greenAccent,),
            icon: Icon(Icons.pages),
            title: Text("") ,
        )
    );

    bottomBairItems.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.add,color: Colors.greenAccent,),
            icon: Icon(Icons.add),
            title: Text("") ,
        )
    );

    bottomBairItems.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.add,color: Colors.greenAccent,),
            icon: Icon(Custom.chat),
            title: Text("") ,
        )
    );

    bottomBairItems.add(
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.add,color: Colors.greenAccent,),
            icon: Icon(Icons.add),
            title: Text("") ,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10.0,
      items: bottomBairItems,
      type: BottomNavigationBarType.fixed
    );
  }
}
