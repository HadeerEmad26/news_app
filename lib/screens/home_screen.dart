import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screens/categories_screen.dart';
import 'package:news_app/screens/drawer.dart';
import 'package:news_app/screens/news_screen.dart';
import 'package:news_app/screens/settings.dart';

class HomeScreen extends StatefulWidget {

  static const String routeName = 'NewsScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSource = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerItem(onDrawerClicked),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        backgroundColor: Color(0xFF39A552),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            borderSide: BorderSide(color: Colors.transparent)),
        title: Text(
          "News App",
          style: GoogleFonts.elMessiri(fontWeight: FontWeight.w100),
        ),
      ),
      body: model == null ? CategoriesScreen(onCategoryClick)
          : NewsScreen(model!),
    );
  }

  CategoryModel? model = null;

  onCategoryClick(categoryModel) {
    model = categoryModel;
    setState(() {

    });
  }


  onDrawerClicked(number) {
    if (number == DrawerItem.CATEGORY) {
      model = null;
      Navigator.pop(context);
      setState(() {

      });
    } else if (number == DrawerItem.SETTING) {
      Navigator.pop(context);
    }
  }

}
