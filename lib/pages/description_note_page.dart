import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:note_app/model/note_item.dart';
import 'package:note_app/pages/add_note_page.dart';
import 'package:note_app/pages/home_page.dart';

class DescriptionNotePage extends StatelessWidget {
  const DescriptionNotePage({super.key, required this.note});
  final NoteItem note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 34),
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
                    currentNote = note;
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const AddNotePage(
                                isEdit: true,
                              )),
                    );
                  },
                  child: const Text(
                    'Edit',
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
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
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
                              : note.importance == EImportance.medium
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
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
                                color: const Color(0xFF191D21).withOpacity(0.7),
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 3, left: 16, right: 16, top: 16),
                    child: Divider(
                      color: const Color(0xFF191D21).withOpacity(0.2),
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat('EEEE, dd MMM. yyyy').format(note.date!),
                          style: const TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFFF87112),
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                        Row(
                          children: [
                            Text(
                              note.category!,
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color:
                                      const Color(0xFF191D21).withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/grid.png',
                              scale: 1.5,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
