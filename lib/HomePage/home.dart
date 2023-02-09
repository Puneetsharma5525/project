import 'package:flutter/material.dart';
import '../Calls/Calls.dart';
import '../Chats/Chat.dart';
import '../Settings/Settings.dart';
import '../Status/Status.dart';
import '../communities/communities.dart';
import '../whatsapp color data/whatsappcolor.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum _ManuValue {
  NewGroup,
  NewBroadcast,
  LinkedDevices,
  StarredMesseages,
  Payments,
  Settings
}

class _HomePageState extends State<HomePage> {
  bool _showSearch = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width / 5;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, _showSearch ? 200 : 105),
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
                                  });
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.grey,
                                )),
                            hintText: 'Search....',
                            border:
                                const OutlineInputBorder(borderSide: BorderSide.none),
                            hintStyle: const TextStyle(color: Colors.grey)),
                        cursorColor: Colors.grey,
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
                            searchitems(
                                110, Icons.document_scanner, 'Documents'),
                            searchitems(80, Icons.poll, 'Polls'),
                          ],
                        ),
                      ),
                    ],
                  )
                : const Text('Whatsapp'),
            actions: _showSearch
                ? []
                : [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: InkWell(
                        child: Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _showSearch = true;
                          });
                        },
                        icon: const Icon(Icons.search)),
                    PopupMenuButton<_ManuValue>(
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: _ManuValue.NewGroup,
                          child: Text('New Group'),
                        ),
                        const PopupMenuItem(
                          value: _ManuValue.NewBroadcast,
                          child: Text('New broadcast'),
                        ),
                        const PopupMenuItem(
                          value: _ManuValue.LinkedDevices,
                          child: Text('Linked devices'),
                        ),
                        const PopupMenuItem(
                          value: _ManuValue.StarredMesseages,
                          child: Text('Starred messages'),
                        ),
                        const PopupMenuItem(
                          value: _ManuValue.Payments,
                          child: Text('Payments'),
                        ),
                        const PopupMenuItem(
                          value: _ManuValue.Settings,
                          child: Text('Settings'),
                        )
                      ],
                      onSelected: (value) {
                        switch (value) {
                          case _ManuValue.NewGroup:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                            break;
                          case _ManuValue.NewBroadcast:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                            break;
                          case _ManuValue.LinkedDevices:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                            break;
                          case _ManuValue.StarredMesseages:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                            break;
                          case _ManuValue.Payments:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                            break;
                          case _ManuValue.Settings:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                            break;
                        }
                      },
                    )
                  ],
            backgroundColor: _showSearch ? Colors.white : MainColor,
            bottom: _showSearch ? null: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Container(
                  width: 25,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.groups,
                  ),
                ),
                Container(
                    width: yourWidth,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text("Chats")),
                Container(
                    width: yourWidth,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text("Status")),
                Container(
                    width: yourWidth,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text("Calls"))
              ],
            ) ,
          ),
        ),
        body: const TabBarView(
          children: [
            Communities(),
            Chat(),
            Status(),
            Calls(),
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
              color: const Color(0xf5464b4f),
              size: 18,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              name,
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
