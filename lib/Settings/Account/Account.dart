import 'package:flutter/material.dart';
import 'package:project/whatsapp%20color%20data/whatsappcolor.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List AccountName = ['Security notifications','Two-step verification','change number','Request account info','Delete my account'];
    List AccountIcon = [Icons.privacy_tip,Icons.backpack_outlined,Icons.change_circle_outlined,Icons.request_page_outlined,Icons.delete];

    return Scaffold(
      appBar: AppBar(title: Text('Account'),elevation: 0,backgroundColor: MainColor,),
      body: Column(
        children: [
          for (int i =0; i<5; i++)...[
            ListTile(
              leading: Icon(AccountIcon[i]),
              title: Text(AccountName[i]),
            ),
          ]

        ],
      ),
    );
  }
}

