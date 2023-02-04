import 'package:flutter/material.dart';

import 'HomePage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,

      ),
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _showSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 220),
        child: AppBar(
          toolbarHeight: 200,
          title: _showSearch
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showSearch = false;
                            FocusScope.of(context).unfocus();
                          });
                        },
                        icon: const Icon(Icons.arrow_back)),
                    hintText: 'Search....',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    searchitems(90, Icons.mark_chat_unread, 'Unread'),
                    searchitems(90, Icons.photo, 'Photos'),
                    searchitems(90, Icons.videocam, 'Videos'),
                    searchitems(85, Icons.link, 'Links'),
                    searchitems(70, Icons.gif_outlined, 'GIFs'),
                    searchitems(80, Icons.audiotrack, 'Audio'),
                    searchitems(110, Icons.document_scanner, 'Documents'),
                    searchitems(80, Icons.poll, 'Polls'),
                  ],
                ),
              ),
            ],
          )
              : null,
          actions: _showSearch
              ? []
              : [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      _showSearch = true;
                    });
                  },
                  icon: const Icon(Icons.search)),
            )
          ],
        ),
      ),
    );
  }

  Container searchitems(double width, Widget, String name) {
    return Container(
      height: 30,
      width: width,
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Widget,
              color: Colors.grey[700],
              size: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '$name',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}