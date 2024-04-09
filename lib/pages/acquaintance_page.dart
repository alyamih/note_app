import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/model/user.dart';
import 'package:note_app/pages/home_page.dart';

UserItem user = UserItem();

class AcquaintancePage extends StatefulWidget {
  const AcquaintancePage({super.key});

  @override
  State<AcquaintancePage> createState() => _AcquaintancePageState();
}

class _AcquaintancePageState extends State<AcquaintancePage> {
  TextEditingController controller = TextEditingController();
  List<ENotesCount> types = [
    ENotesCount.often,
    ENotesCount.sometimes,
    ENotesCount.rarely
  ];
  ENotesCount selected = ENotesCount.often;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 65, 16, 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'Let\'s get acquainted',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFF191D21),
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                  child: TextField(
                    cursorColor: Colors.grey,
                    controller: controller,
                    style: const TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xFF1E2321),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontFamily: 'Inter',
                          color: const Color(0xFF1E2321).withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                      hintText: 'Write your name',
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (text) {
                      controller.text = text;
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'How often do you write notes?',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: const Color(0xFF191D21).withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: getTypes(),
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
            child: InkWell(
              onTap: () {
                if (controller.text.isNotEmpty) {
                  user.name = controller.text;
                  user.type = selected;
                  addShared();

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage()),
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: controller.text.isNotEmpty
                        ? const Color(0xFFF87112)
                        : const Color(0xFFF87112).withOpacity(0.7)),
                child: Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      color: controller.text.isNotEmpty
                          ? Colors.white
                          : Colors.white.withOpacity(0.25),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getTypes() {
    List<Widget> list = [];
    for (var type in types) {
      list.add(InkWell(
        onTap: () {
          selected = type;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: selected == type
                      ? const Color(0xFFF87112)
                      : Colors.transparent,
                  width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                type.text,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    color: Color(0xFF1E2321),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }
}
