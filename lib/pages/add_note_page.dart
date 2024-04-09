import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:note_app/model/note_item.dart';
import 'package:note_app/pages/add_note_text_page.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:uuid/uuid.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key, required this.isEdit});
  final bool isEdit;

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  List<EImportance> importance = [
    EImportance.very,
    EImportance.important,
    EImportance.medium,
    EImportance.not
  ];
  EImportance selected = EImportance.very;
  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      nameController.text = currentNote.name!;
      dateController.text = DateFormat(' MM/dd/yyyy').format(currentNote.date!);
      selected = currentNote.importance!;
      typeController.text = currentNote.category!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 65, 16, 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: Color(0xFF191D21),
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xFF191D21),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  if (!widget.isEdit) {
                    currentNote.id = const Uuid().v1();
                  }
                  if (nameController.text.isNotEmpty &&
                      dateController.text.isNotEmpty) {
                    currentNote.name = nameController.text;
                    currentNote.date = _selectedDate;
                    currentNote.category = typeController.text;
                    currentNote.importance = selected;
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => AddNoteTextPage(
                                isEdit: widget.isEdit,
                              )),
                    );
                  }
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFFF87112),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
          child: Row(
            children: [
              Text(
                'New note',
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
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: TextField(
                  cursorColor: Colors.grey,
                  controller: nameController,
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFF1E2321),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/clipboard.png'),
                    hintStyle: const TextStyle(),
                    hintText: 'Note name',
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
                    nameController.text = text;
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: TextField(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: SizedBox(
                              width: 500,
                              height: 200,
                              child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date,
                                itemExtent: 50,
                                initialDateTime: _selectedDate,
                                onDateTimeChanged: (DateTime newDate) {
                                  setState(() {
                                    _selectedDate = newDate;
                                    dateController.text =
                                        DateFormat('dd MMM. yyyy')
                                            .format(_selectedDate);
                                  });
                                },
                              ),
                            ),
                          );
                        });
                  },
                  cursorColor: Colors.grey,
                  controller: dateController,
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFF1E2321),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/calendar.png'),
                    hintStyle: const TextStyle(),
                    hintText: 'Note date',
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
                    dateController.text = text;
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: TextField(
                  cursorColor: Colors.grey,
                  controller: typeController,
                  maxLength: 15,
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFF1E2321),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/grid.png'),
                    hintStyle: const TextStyle(),
                    hintText: 'Note category',
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
                    typeController.text = text;
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
                        'Degree of importance',
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
                child: getImportance(),
              )
            ],
          )),
        )
      ]),
    );
  }

  Widget getImportance() {
    List<Widget> list = [];
    for (var type in importance) {
      list.add(InkWell(
        onTap: () {
          selected = type;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: selected == type
                      ? const Color(0xFFF87112)
                      : Colors.transparent)),
          child: Row(children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: type == EImportance.very
                      ? const Color(0xFFED2A2A)
                      : type == EImportance.important
                          ? const Color(0xFFED702A)
                          : type == EImportance.medium
                              ? const Color(0xFFEDCE2A)
                              : const Color(0xFF2EED2A)),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              type.text,
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: selected == type
                      ? const Color(0xFFF87112)
                      : const Color(0xFF1E2321),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            )
          ]),
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
