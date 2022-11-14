import 'package:flutter/material.dart';
import 'package:merokitab/screens/read_book.dart';
import '../colors.dart';
import 'book.dart';

class BookReview extends StatelessWidget {
  final Book book;

  const BookReview(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '${book.score}',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              _buildStar()
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '${book.ratings} Ratings on GoodReads',
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 15),
          Text.rich(TextSpan(children: [
            TextSpan(
              text: book.review,
              style: const TextStyle(
                color: KFont,
                fontSize: 16,
                height: 1.8,
              ),
            ),
          ])),
          TextButton(
            onPressed: (){},child: const Text('Read more..',style: TextStyle(color: Colors.grey),),

          ),
          const SizedBox(height: 20,),
          Container(
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  color: KFont,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.read_more_sharp,color: Colors.white),
                  SizedBox(width: 4,),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReadBook(bookUrl: book.pdfUrl!,)),
                      );
                    },
                    child: Text('Read the book',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),),
                  ),

                ],
              ))
        ],
      ),
    );
  }

  Widget _buildStar() {
    final List<Color> color = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3)
    ];
    return Row(
        children: color
            .map((e) => Icon(
          Icons.star,
          size: 25,
          color: e,
        ))
            .toList());
  }
}
