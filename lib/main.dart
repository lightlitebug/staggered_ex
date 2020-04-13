import 'package:flutter/material.dart';
import 'package:staggered_ex/my_home_page.dart';
import 'package:staggered_ex/spannable_count_count_page.dart';
import 'package:staggered_ex/spannable_count_extent_page.dart';
import 'package:staggered_ex/spannable_extent_count_page.dart';
import 'package:staggered_ex/spannable_extent_extent_page.dart';
import 'package:staggered_ex/staggered_count_count_page.dart';
import 'package:staggered_ex/staggered_count_extent_page.dart';
import 'package:staggered_ex/staggered_extent_count_page.dart';
import 'package:staggered_ex/staggered_extent_extent_page.dart';
import 'package:staggered_ex/staggered_tile_fit.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StaggeredGridView Demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.teal,
      ),
      home: MyHomePage(),
      routes: {
        StaggeredCountCountPage.route: (context) => StaggeredCountCountPage(),
        StaggeredCountExtentPage.route: (context) => StaggeredCountExtentPage(),
        StaggeredExtentCountPage.route: (contex) => StaggeredExtentCountPage(),
        StaggeredExtentExtentPage.route: (context) =>
            StaggeredExtentExtentPage(),
        SpannableCountCountPage.route: (context) => SpannableCountCountPage(),
        SpannableCountExtentPage.route: (context) => SpannableCountExtentPage(),
        SpannableExtentCountPage.route: (context) => SpannableExtentCountPage(),
        SpannableExtentExtentPage.route: (context) =>
            SpannableExtentExtentPage(),
        StaggeredTileFit.route: (context) => StaggeredTileFit(),
      },
    );
  }
}
