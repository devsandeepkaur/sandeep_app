import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageURL = "https://avatars.githubusercontent.com/u/12619420?v=4";
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              
              padding: EdgeInsets.zero,
                 child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
               
                accountName: Text("sandeep kaur"),
                accountEmail: Text("sandeep@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
         
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
            ),
            title: Text(
              "home",
              textScaleFactor: 1.2  ,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ),
            
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
  
           const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "mail",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}



