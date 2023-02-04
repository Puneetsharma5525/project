import 'package:flutter/material.dart';

import '../../whatsapp color data/whatsappcolor.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Help'),backgroundColor: MainColor,),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Help Centre'),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Contact us'),
            subtitle: Text('Questions? Need help?'),
          ),
          ListTile(
            leading: Icon(Icons.insert_page_break_sharp),
            title: Text('Terms and Privacy Policy'),
          ),
          ListTile(
            leading: Icon(Icons.report_gmailerrorred_rounded),
            title: Text('App info'),
          ),
        ],
      ),
    );
  }
}

