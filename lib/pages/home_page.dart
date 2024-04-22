import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:whosaid/pages/calls_page.dart';
import 'package:whosaid/pages/chats_page.dart';
import 'package:whosaid/pages/communities_page.dart';
import 'package:whosaid/pages/updates_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _selectedIndexForPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndexForPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: GNav(
          selectedIndex: _selectedIndexForPage,
          style: GnavStyle.oldSchool,
          activeColor: Colors.green.shade300,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          gap: 5,
          iconSize: MediaQuery.of(context).size.width / 15,
          tabs: const [
            GButton(
              icon: Icons.chat,
              iconColor: Colors.white,
              text: "Chats",
            ),
            GButton(
              icon: Icons.change_circle_outlined,
              iconColor: Colors.white,
              text: "Updates",
            ),
            GButton(
              icon: Icons.groups,
              iconColor: Colors.white,
              text: "Communities",
            ),
            GButton(
              icon: Icons.call_outlined,
              iconColor: Colors.white,
              text: "Calls",
            ),
          ],
          onTabChange: (index) {
            setState(() {
              _selectedIndexForPage = index;
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 10),
                curve: Curves.ease,
              );
            });
          },
        ),
      ),
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            _selectedIndexForPage = value;
          });
        },
        controller: _pageController,
        children: const <Widget>[
          ChatsPage(),
          UpdatesPage(),
          CommunitiesPage(),
          CallsPage(),
        ],
      ),
    );
  }
}
