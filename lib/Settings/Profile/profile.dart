import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import '../../whatsapp color data/whatsappcolor.dart';
import 'about.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  var NameController = TextEditingController();
  final fromKey = GlobalKey();
  var   Name  = "Enter Your Name";
  File? _image;
  Future getImage() async{
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if(image == null) return ;
    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  void initState() {
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0,
        backgroundColor: MainColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SizedBox(
              height: 125,
              width: 125,
              child: Stack(
                children: [
                  if (_image == null) CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey.shade400,
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ) else ClipOval(child: Image.file(_image!,fit: BoxFit.cover,height: 120,width: 120,)) ,
                  Positioned(
                    child: Container(
                        decoration: BoxDecoration(
                          color: MainColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: ()=>getImage(),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        )),
                    right: 0,
                    bottom: 0,
                  )
                ],
              ),
            ),
          ),
          Form(
            child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Name',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                ),
                subtitle:


                Text(
                  '$Name',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                trailing: Icon(Icons.edit,color: MainColor,),onTap: ()=>   showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Enter Your Name'),
                    content: TextFormField(
                      controller: NameController,
                      decoration:
                      InputDecoration(hintText: 'Enter Your Name',
                      ),validator: (value){
                      if(value?.trim() == null){
                        return "Your Filled is Empty";
                      }
                      if (value !=null&&value.length<3){
                        return "Enter More characters";
                      };
                    },
                    ),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancel')),
                      TextButton(onPressed: () async{
                        var name = NameController.text.toString();
                        var pref = await SharedPreferences.getInstance();
                        pref.setString("name", name);
                        Navigator.pop(context);
                      }, child: Text('Save')),
                    ],
                  );
                }),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
                'This is not your username or pin. This name will be visible to your WhatsApp contacts.',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          Divider(
            thickness: 0.1,
            indent: 60,
          ),
          ListTile(
              leading: Icon(Icons.report_gmailerrorred),
              title: Text(
                'About',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
              ),
              subtitle: Text(
                'At the movies',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              trailing: Icon(
                Icons.edit,
                color: MainColor,
              ),
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_About())),
          ),
          Divider(
            thickness: 0.1,
            indent: 60,
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text(
              'Phone',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
            ),
            subtitle: Text(
              '+91 94604 448575',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
  void getValue() async{
   var prefs = await SharedPreferences.getInstance();
  var GetName= prefs.getString("name");
   if (GetName != null) {
     Name = GetName;
   } else {
     Name = "Enter Your Name";
   }
setState(() {

});
  }
}
