
import 'package:flutter/material.dart';

import '../../whatsapp color data/whatsappcolor.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Avatar'
        ),
        backgroundColor: MainColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: Color(0xffd5def8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Image(image: AssetImage('assets/avatar.png')),
                Text('Say more with Avatars now on WhatsApp',style: TextStyle(fontWeight: FontWeight.w500),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(onPressed: (){},child: Text('Create your Avatar',style: TextStyle(color: Colors.white),),color: MainColor,minWidth: double.infinity,shape: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide.none),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text('Learn more',style: TextStyle(color: Colors.blue.shade600,fontSize: 14),),
          )
        ],
      ),
    );
  }
}
