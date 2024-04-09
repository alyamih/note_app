import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key, required this.callback, required this.close});
  final Function(String value) callback;
  final Function() close;
  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController textEditController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: TextField(
          controller: textEditController,
          onChanged: (val) {
            widget.callback(textEditController.text);
          },
          cursorHeight: 13,
          style: const TextStyle(
            height: 1,
            fontSize: 16,
          ),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () {
                textEditController.text = '';
                setState(() {});
                widget.close();
              },
              child: const Icon(
                Icons.close,
                color: Color(0xFF191D21),
              ),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xFF191D21),
            ),
            contentPadding: const EdgeInsets.only(top: 0),
            hintText: 'Write a note name',
            hintStyle: TextStyle(
              fontSize: 16,
              color: const Color(0xFF191D21).withOpacity(0.7),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFEFEFEF)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFEFEFEF)),
            ),
          )),
    );
  }
}
