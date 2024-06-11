import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 70.h,
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check),
              label: 'Your Task',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Workspace',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.theme.primaryColor,
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
