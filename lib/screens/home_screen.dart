import 'package:flutter/material.dart';
import 'book_strigged_views.dart';
import 'custom_tab.dart';
import 'more_options.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var tabIndex = 0;
  var bottomIndex = 0;

  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const More()),
                );},
                icon: Icon(Icons.view_headline_sharp),
              )
            ],
            backgroundColor: Colors.blueGrey.shade900,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'MeroKitab',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              CustomTab(
                tabIndex,
                (int index) {
                  setState(() {
                    tabIndex = index;
                  });
                  pageController.jumpToPage(index);
                },
              ),
              Expanded(
                  child: BookStaggeredGridView(
                      tabIndex,
                      pageController,
                      (int index) => setState(() {
                            tabIndex = index;
                          })))
            ],
          ),
        ));
  }
}
