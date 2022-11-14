import 'package:flutter/material.dart';
import '../colors.dart';
import 'book.dart';
import 'book_cover.dart';
import 'book_detail.dart';
import 'book_review.dart';

class DetailPage extends StatelessWidget {
  final Book book;

  const DetailPage(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BookDetail(book),
              BookCover(book),
              BookReview(book),
            ],
          ),
        ));
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Icons.arrow_back,
          color: KFont,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz_outlined,
            color: KFont,
          ),
        )
      ],
    );
  }
}
