import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../whatsapp color data/whatsappcolor.dart';
import 'Account/Account.dart';
import 'Avatar/Avatar.dart';
import 'Chats/Chats.dart';
import 'Help/Help.dart';
import 'Invite a friend/Inviteafriend.dart';
import 'Notifications/Notifications.dart';
import 'Privacy/Privacy.dart';
import 'Profile/profile.dart';
import 'Storage and data/Storage_And_Data.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var Name = "User";
  @override
  void initState() {
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),        backgroundColor: MainColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.person,color: Colors.white,size: 40,),radius: 28,backgroundColor: Colors.black12,),
                title: Text('$Name'),
                subtitle: Text('Hello. I`m using WhatsApp Business.',style: TextStyle(fontSize: 12),),
                trailing: Icon(Icons.qr_code,color: MainColor,),
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile())),
              ),
            ),
            Divider(thickness: 0.1,),
            ListTile(leading: Icon(Icons.key_rounded),title: Text('Account'),subtitle: Text('Security notifcations, change number'),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Account())),),
            ListTile(leading: Icon(Icons.lock),title: Text('Privacy'),subtitle: Text('Security notifcations, change number'),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy()))),
            ListTile(leading: Icon(Icons.face),title: Text('Avatar'),subtitle: Text('Security notifcations, change number'),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Avatar()))),
            ListTile(leading: Icon(Icons.chat_sharp),title: Text('Chats'),subtitle: Text('Security notifcations, change number'),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Chats()))),
            ListTile(leading: Icon(Icons.notifications),title: Text('Notifications'),subtitle: Text('Security notifcations, change number'),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Notitfications()))),
            ListTile(leading: Icon(Icons.data_saver_off_sharp),title: Text('Storage and data'),subtitle: Text('Security notifcations, change number'),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Storage_date()))),
            ListTile(leading: Icon(Icons.shopping_cart_checkout),title: Text('App language'),subtitle: Text('Security notifcations, change number'),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy()))),
            ListTile(leading: Icon(Icons.help_outline),title: Text('Help'),subtitle: Text('Security notifcations, change number'),onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Help()))),
            ListTile(leading: Icon(Icons.group),title: Text('Invite a friend'), onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Inviteafriend()))),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 30),
             child: Column(
               children: [
                 Text('from',style: TextStyle(fontSize: 14,color: Colors.grey),),
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 5),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Image(image: AssetImage('assets/meta.png'),height: 15,),  Text('  Meta'),
                     ],
                   ),
                 )
               ],
             ),
           ),

          ],
        ),
      ),
    );

  }
  void getValue() async{
    var prefs = await SharedPreferences.getInstance();
    var GetName= prefs.getString("name");
    if (GetName != null) {
      Name = GetName;
    } else {
      Name = "User";
    }
    setState(() {

    });
  }
}

