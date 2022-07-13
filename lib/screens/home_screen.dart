import 'package:flutter/material.dart';
import 'package:ticktok_ui/screens/message_screen.dart';
import 'package:ticktok_ui/screens/profile_screen.dart';
import 'package:ticktok_ui/screens/search_screen.dart';
import 'package:ticktok_ui/screens/video_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;
  Widget _buildPages(int index) {
    switch (index) {
      case 0:
        return VideoScreen();
        break;
      case 1:
        return SearchScreen();
        break;
      case 2:
        return VideoScreen();
        break;
      case 3:
        return MessaegScreen();
        break;
      case 4:
        return ProfileScreen();
        break;
      default:
        return VideoScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              pageIdx = idx;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          currentIndex: pageIdx,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.message, size: 30),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: '',
            ),
          ],
        ),
        body: _buildPages(pageIdx),
      ),
    );
  }
}
