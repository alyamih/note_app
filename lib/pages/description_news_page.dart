import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:note_app/model/news_item.dart';

class DescriptionNewsPage extends StatefulWidget {
  const DescriptionNewsPage({
    super.key,
    required this.news,
  });
  final NewsItem news;

  @override
  State<DescriptionNewsPage> createState() => _DescriptionNewsPageState();
}

class _DescriptionNewsPageState extends State<DescriptionNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 38),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: Color(0xFF191D21),
                  ),
                  Text(
                    'News',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color(0xFF191D21),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          height: 178,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                    widget.news.image!,
                                  ))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          widget.news.title!,
                          style: const TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFF191D21),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          widget.news.text!,
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: const Color(0xFF191D21).withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
