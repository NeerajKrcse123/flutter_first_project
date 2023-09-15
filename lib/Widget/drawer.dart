import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
                  accountName: Text("Neeraj"),
                  accountEmail: Text("neerajkryadav123@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assests/images/IMG_1920.JPG"),
                  ),
                  margin: EdgeInsets.zero,
                )),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.deepPurple,
                  ),
                  title: Text("Home",textScaleFactor: 1.2, style:TextStyle(color: Colors.deepPurple) ,),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.deepPurple,
                  ),
                  title: Text("Profile",textScaleFactor: 1.2, style:TextStyle(color: Colors.deepPurple) ,),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.deepPurple,
                  ),
                  title: Text("Email me ",textScaleFactor: 1.2, style:TextStyle(color: Colors.deepPurple) ,),
                )
          ],
        ),
      ),
    );
  }
}
