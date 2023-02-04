import 'dart:io';
import 'package:flutter/material.dart';
import '../Calls/Calls.dart';
import '../Chats/Chat.dart';
import '../Settings/Settings.dart';
import '../Status/Status.dart';
import '../communities/communities.dart';
import '../whatsapp color data/whatsappcolor.dart';
import 'package:image_picker/image_picker.dart';

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
  File? _Image;
  Future getImage() async{
    final img = ImagePicker().pickImage(source: ImageSource.camera);
    if (img == null) return;
    // final FinalImage = File(img.path);

  }
  bool isBool = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width  / 5;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: isBool? AppBar(
          backgroundColor: MainColor,
          title: Text(
            'WhatsApp',
            style: TextStyle(color: FontColor),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: InkWell(child: Icon(Icons.camera_alt_outlined),),
            ),
            const Icon(Icons.search),
            PopupMenuButton<_ManuValue>(
                itemBuilder: (context) => [
                      const PopupMenuItem(value: _ManuValue.NewGroup,child: Text('New Group'),),
                      const PopupMenuItem(value: _ManuValue.NewBroadcast,child: Text('New broadcast'),),
                      const PopupMenuItem(value: _ManuValue.LinkedDevices,child: Text('Linked devices'),),
                      const PopupMenuItem(value: _ManuValue.StarredMesseages,child: Text('Starred messages'),),
                      const PopupMenuItem(value: _ManuValue.Payments,child: Text('Payments'),),
                      const PopupMenuItem(value: _ManuValue.Settings,child: Text('Settings'),)
                    ],
            onSelected: (value) {
             switch (value){
               case _ManuValue.NewGroup:
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
                 break;
               case _ManuValue.NewBroadcast:
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
                 break;
               case _ManuValue.LinkedDevices:
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
                 break;
               case _ManuValue.StarredMesseages:
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
                 break;
               case _ManuValue.Payments:
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
                 break;
               case _ManuValue.Settings:
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Settings()));
                 break;
             }
            },)
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs:  [
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
          ),
        ):PreferredSize(child: AppBar(), preferredSize: Size(double.infinity,200)),
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
}
