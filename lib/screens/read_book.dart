import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../colors.dart';

class ReadBook extends StatefulWidget {
  final String bookUrl;
  const ReadBook({Key? key, required this.bookUrl}) : super(key: key);

  @override
  State<ReadBook> createState() => _ReadBookState();
}

class _ReadBookState extends State<ReadBook> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  PdfViewerController? _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //log(_pdfViewerKey.currentState.));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KFont,
        title: const Text('MeroKitab'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SafeArea(
          child: SfPdfViewer.asset(
        widget.bookUrl,
        key: _pdfViewerKey,
      )),
    );
  }
}
