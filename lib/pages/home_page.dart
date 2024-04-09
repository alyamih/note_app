import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:note_app/model/note_item.dart';
import 'package:note_app/model/user.dart';
import 'package:note_app/pages/add_note_page.dart';
import 'package:note_app/pages/acquaintance_page.dart';
import 'package:note_app/pages/description_note_page.dart';
import 'package:note_app/widgets/bottom_bar.dart';
import 'package:note_app/widgets/search_widget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<NoteItem> notes = [];
NoteItem currentNote = NoteItem();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getShared(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Column(children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 65, 16, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'My notes',
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
              child: notes.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 31),
                          child: Text(
                            'Add your first note',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: Color(0xFF191D21),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Image.asset('assets/add.png')
                      ],
                    )
                  : SingleChildScrollView(
                      child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: getNotes(),
                        )
                      ],
                    )),
            ),
            const BottomBar()
          ]),
          Positioned(
            bottom: 90,
            child: InkWell(
                onTap: () {
                  currentNote = NoteItem();
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const AddNotePage(
                              isEdit: false,
                            )),
                  );
                },
                child: Image.asset('assets/button.png')),
          ),
        ],
      ),
    );
  }

  Widget getNotes() {
    String searchText = '';
    return StatefulBuilder(
      builder: (BuildContext context, setstate) {
        List<Widget> list = [];
        List<NoteItem> newNotes = notes
            .where((element) =>
                element.name!.contains(searchText) ||
                element.name!.toLowerCase().contains(searchText))
            .toList();
        list.add(
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 17),
              child: SearchWidget(
                close: () {
                  searchText = '';
                  setstate(() {});
                },
                callback: (value) {
                  searchText = value;
                  setstate(() {});
                },
              )),
        );
        for (var note in newNotes) {
          list.add(CupertinoContextMenu(
              actions: <Widget>[
                CupertinoContextMenuAction(
                  onPressed: () {
                    currentNote = note;
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const AddNotePage(
                                isEdit: true,
                              )),
                    );
                  },
                  trailingIcon: CupertinoIcons.pen,
                  child: const Text('Edit'),
                ),
                CupertinoContextMenuAction(
                  onPressed: () {
                    Share.share(note.comment!);
                    Navigator.pop(context);
                  },
                  trailingIcon: CupertinoIcons.share,
                  child: const Text('Share'),
                ),
                CupertinoContextMenuAction(
                  onPressed: () {
                    notes.removeWhere((element) => element.id == note.id);
                    addShared();
                    setState(() {});
                    Navigator.pop(context);
                  },
                  isDestructiveAction: true,
                  trailingIcon: CupertinoIcons.delete,
                  child: const Text('Delete'),
                ),
              ],
              child: Card(
                elevation: 0,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              DescriptionNotePage(
                                note: note,
                              )),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Row(
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: note.importance == EImportance.very
                                      ? const Color(0xFFED2A2A)
                                      : note.importance == EImportance.important
                                          ? const Color(0xFFED702A)
                                          : note.importance ==
                                                  EImportance.medium
                                              ? const Color(0xFFEDCE2A)
                                              : const Color(0xFF2EED2A)),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              note.name!,
                              style: const TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF191D21),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                note.comment!,
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color(0xFF191D21)
                                        .withOpacity(0.7),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Divider(
                          color: const Color(0xFF191D21).withOpacity(0.2),
                          height: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  DateFormat('EEEE, dd MMM. yyyy')
                                      .format(note.date!),
                                  style: const TextStyle(
                                      fontFamily: 'Inter',
                                      color: Color(0xFFF87112),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/grid.png',
                                    scale: 1.5,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    note.category!,
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: const Color(0xFF191D21)
                                            .withOpacity(0.7),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ]),
                  ),
                ),
              )));
          list.add(const SizedBox(
            height: 12,
          ));
        }
        return Column(
          children: list,
        );
      },
    );
  }
}

Future<void> addShared() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('notes', jsonEncode(notes));

  prefs.setString('user', jsonEncode(user));
}

void getShared(Function() callBack) async {
  final prefs = await SharedPreferences.getInstance();
  if (prefs.getString('user') != null) {
    Map<String, dynamic> userMap = jsonDecode(prefs.getString('user')!);
    user = UserItem.fromJson(userMap);
  }
  final List<dynamic> jsonData1 = jsonDecode(prefs.getString('notes') ?? '[]');

  notes = jsonData1.map<NoteItem>((jsonList) {
    {
      return NoteItem.fromJson(jsonList);
    }
  }).toList();

  callBack();
}
