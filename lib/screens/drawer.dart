import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/settings.dart';

class DrawerItem extends StatelessWidget {
  Function onClicked;

  DrawerItem(this.onClicked);

  static int CATEGORY = 1;
  static int SETTING = 2;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.green,
            height: 300,
            alignment: Alignment.center,
            child: Text(
              "News App",
              style: GoogleFonts.aBeeZee(fontSize: 28, color: Colors.white),
            ),
          ),
          InkWell(
            onTap: () {
              onClicked(CATEGORY);
            },
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text("Categories",
                style: GoogleFonts.exo(
                    fontWeight: FontWeight.w400
                ),),
            ),
          ),
          SizedBox(height: 10,),
          // Divider(
          //   indent: 16,
          //   endIndent: 16,
          //   thickness: 2,
          //   color: Colors.green,
          // ),
          InkWell(
            onTap: () {
              onClicked(SETTING);
              // Navigator.pushNamedAndRemoveUntil(
              //     context, SettingsScreen.routeName, (route) => false);
            },
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text("Settings", style: GoogleFonts.exo(
                  fontWeight: FontWeight.w400
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
