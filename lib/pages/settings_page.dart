import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/pages/acquaintance_page.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/pages/show_screen.dart';
import 'package:note_app/widgets/bottom_bar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late ThemeData theme;
  bool notif = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 65, 16, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xFF191D21),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Your opinion is important!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFF191D21),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          'We need your feedback to get better',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: const Color(0xFF191D21).withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(17),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF87112),
                            borderRadius: BorderRadius.circular(32)),
                        child: const Text(
                          'Rate app',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const ReadTermsOrPrivacyScreenView(
                                        link: 'google.com',
                                      )),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/Shield.png'),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const Text(
                                    'Safety',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF191D21),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: const Color(0xFF191D21).withOpacity(0.5),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/bell.png'),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  'Notification',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF191D21),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              activeColor: const Color(0xFFF87112),
                              value: user.nootificationOn != null
                                  ? user.nootificationOn!
                                  : notif,
                              onChanged: (bool val) {
                                notif = val;
                                user.nootificationOn = notif;
                                addShared();
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/star.png'),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    const Text(
                                      'Rate app',
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          color: Color(0xFF191D21),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const ReadTermsOrPrivacyScreenView(
                                        link: 'google.com',
                                      )),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/doc.png'),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF191D21),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const BottomBar()
      ]),
    );
  }
}
