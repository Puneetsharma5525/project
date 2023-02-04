import 'package:flutter/material.dart';
import 'package:project/whatsapp%20color%20data/whatsappcolor.dart';

class Profile_About extends StatefulWidget {
  const Profile_About({Key? key}) : super(key: key);

  @override
  State<Profile_About> createState() => _Profile_AboutState();
}
class _Profile_AboutState extends State<Profile_About> {
    var Currently = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        actions: [
          PopupMenuButton(itemBuilder: (context) =>[
            PopupMenuItem(child: const Text('Delete all'),onTap: ()=> showDialog(context: context, builder: (context) => AlertDialog(
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Save')),
              ],
            ), ),),

          ],),
        ],
        backgroundColor: MainColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:   [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text('Currently set to',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
          ),
          ListTile(title: Text('At the movies'),trailing: Icon(Icons.edit),onTap: ()=> showDialog(context: context, builder: (context)=>AlertDialog(
            title: Text(
              'Add About'
            ),
            content: TextFormField(
              controller: Currently,
              decoration:
              InputDecoration(hintText: 'About',),

            ),
            actions: [
              TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Cancel')),
              TextButton(onPressed: (){}, child: Text('Save')),

            ],
          )),),
          Divider(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text('Select About'),
          ),

        ],
      ),
    );
  }
}
