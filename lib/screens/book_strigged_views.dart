import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'book.dart';
import 'book_item.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;
  BookStaggeredGridView(this.selected, this.pageController, this.callback,
      {Key? key})
      : super(key: key);
  List<Book> bookList = Book.generateBooks();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: PageView(
          controller: pageController,
          onPageChanged: (index) => callback(index),
          children: [
            StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 4,
                itemCount: bookList.length,
                itemBuilder: (_,index)=> BookItem(bookList[index]),
                staggeredTileBuilder: (_)=> const StaggeredTile.fit(2)),
            Container(
              child: Center(child: Text('Updating Soon..')),
            ),
          ],
        ),
      ),
    );
  }
}
