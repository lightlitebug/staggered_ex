import 'package:flutter/material.dart';
import 'package:staggered_ex/spannable_count_count_page.dart';
import 'package:staggered_ex/spannable_count_extent_page.dart';
import 'package:staggered_ex/spannable_extent_count_page.dart';
import 'package:staggered_ex/spannable_extent_extent_page.dart';
import 'package:staggered_ex/staggered_count_count_page.dart';
import 'package:staggered_ex/staggered_count_extent_page.dart';
import 'package:staggered_ex/staggered_extent_count_page.dart';
import 'package:staggered_ex/staggered_extent_extent_page.dart';
import 'package:staggered_ex/staggered_tile_fit.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StaggeredGridView Demo'),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyButton(
                title: 'Staggered (Count, Count)',
                onPressed: () => Navigator.of(context)
                    .pushNamed(StaggeredCountCountPage.route),
              ),
              MyButton(
                title: 'Staggered (Count, Extent)',
                onPressed: () => Navigator.of(context)
                    .pushNamed(StaggeredCountExtentPage.route),
              ),
              MyButton(
                title: 'Staggered (Extent, Count)',
                onPressed: () => Navigator.of(context)
                    .pushNamed(StaggeredExtentCountPage.route),
              ),
              MyButton(
                title: 'Staggered (Extent, Extent)',
                onPressed: () => Navigator.of(context)
                    .pushNamed(StaggeredExtentExtentPage.route),
              ),
              MyButton(
                title: 'Spannable (Count, Count)',
                onPressed: () => Navigator.of(context)
                    .pushNamed(SpannableCountCountPage.route),
              ),
              MyButton(
                title: 'Spannable (Count, Extent)',
                onPressed: () => Navigator.of(context)
                    .pushNamed(SpannableCountExtentPage.route),
              ),
              MyButton(
                title: 'Spannable (Extent, Count)',
                onPressed: () => Navigator.of(context)
                    .pushNamed(SpannableExtentCountPage.route),
              ),
              MyButton(
                title: 'Spannable (Extent, Extent)',
                onPressed: () => Navigator.of(context)
                    .pushNamed(SpannableExtentExtentPage.route),
              ),
              MyButton(
                title: 'Staggered Tile Fit',
                onPressed: () =>
                    Navigator.of(context).pushNamed(StaggeredTileFit.route),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  MyButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
