import 'package:flutter/material.dart';
import 'book.dart';

class BookCover extends StatelessWidget {
  final Book book;

  const BookCover(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(left: 20),
      height: 250,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 50),
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              child: Image.asset(
                book.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 190,
            bottom: 20,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepOrange,
              ),
              child: const Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          Positioned(
            left: 240,
            bottom: 20,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.play_arrow_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 30,
                    width: 90,
                    child: TextButton(
                      child: const Center(
                        child: Text('Audio Book',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: (){},),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
