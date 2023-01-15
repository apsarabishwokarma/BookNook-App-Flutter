import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://64.media.tumblr.com/8dc15fdf0f4d8deeb4e5c68e8d2e77c7/653c788e81d33b77-98/s540x810/291f773be1c90441aab6bc0ab7d2e74a93edca71.jpg";
    return Drawer(
        child: Container(
      color: const Color.fromARGB(255, 67, 44, 106),
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero, //bitrabata
            margin: EdgeInsets.zero, //bahira bata
            //decoration: BoxDecoration(color: Colors.red),
            child: UserAccountsDrawerHeader(
              accountName: Text(
                "Apsara Bishwokarma",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "apsarabk94@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text("Home",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
            title: Text("Profile",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text("Mail",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    ));
  }
}
