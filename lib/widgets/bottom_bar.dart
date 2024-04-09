import 'package:flutter/material.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/pages/news_page.dart';
import 'package:note_app/pages/settings_page.dart';

enum EPageOnSelect {
  home,
  profile,
  news,
}

EPageOnSelect page = EPageOnSelect.home;

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 15.0,
          spreadRadius: 10.0,
          offset: const Offset(
            5.0,
            5.0,
          ),
        )
      ]),
      padding: const EdgeInsets.fromLTRB(40, 20, 40, 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.home) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const HomePage()),
                    (route) => false);
              }
              page = EPageOnSelect.home;
              setState(() {});
            },
            child: SizedBox(
                height: 40,
                width: 55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/notes.png',
                      color: page == EPageOnSelect.home
                          ? const Color(0xFFF87112)
                          : const Color(0xFF626262),
                    ),
                    Text(
                      'Notes',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: page == EPageOnSelect.home
                            ? const Color(0xFFF87112)
                            : const Color(0xFF626262),
                      ),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.news) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const NewsPage()),
                    (route) => false);
              }
              page = EPageOnSelect.news;

              setState(() {});
            },
            child: SizedBox(
                height: 40,
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/news.png',
                      color: page == EPageOnSelect.news
                          ? const Color(0xFFF87112)
                          : const Color(0xFF626262),
                    ),
                    Text(
                      'News',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: page == EPageOnSelect.news
                            ? const Color(0xFFF87112)
                            : const Color(0xFF626262),
                      ),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.profile) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const SettingsPage()),
                    (route) => false);
              }
              page = EPageOnSelect.profile;

              setState(() {});
            },
            child: SizedBox(
                height: 40,
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/settings.png',
                      color: page == EPageOnSelect.profile
                          ? const Color(0xFFF87112)
                          : const Color(0xFF626262),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: page == EPageOnSelect.profile
                            ? const Color(0xFFF87112)
                            : const Color(0xFF626262),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
