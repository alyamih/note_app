import 'package:flutter/material.dart';
import 'package:note_app/pages/home_page.dart';

class AddNoteTextPage extends StatefulWidget {
  const AddNoteTextPage({super.key, required this.isEdit});
  final bool isEdit;

  @override
  State<AddNoteTextPage> createState() => _AddNoteTextPageState();
}

class _AddNoteTextPageState extends State<AddNoteTextPage> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.isEdit) {
      controller.text = currentNote.comment!;
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
                  currentNote.comment = controller.text;
                  if (widget.isEdit) {
                    notes
                        .removeWhere((element) => element.id == currentNote.id);
                  }
                  notes.add(currentNote);
                  addShared();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage()),
                  );
                },
                child: const Text(
                  'Apply',
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
          padding: EdgeInsets.fromLTRB(16, 0, 16, 10),
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
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                TextField(
                  maxLines: 1000,
                  cursorColor: Colors.grey,
                  controller: controller,
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFF1E2321),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                  decoration: InputDecoration(
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
              ],
            ),
          )),
        )
      ]),
    );
  }
}
