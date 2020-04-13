import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const List<StaggeredTile> _tiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(4, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 4),
  const StaggeredTile.count(1, 3),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
];

class SpannableExtentCountPage extends StatelessWidget {
  static const String route = '/spannable_extent_count';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spannable (Extent, Count)'),
      ),
      body: StaggeredGridView.extentBuilder(
        maxCrossAxisExtent: 100,
        itemCount: _tiles.length,
        // itemBuilder: _getChild,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Theme.of(context).accentColor,
            child: Center(
              child: CircleAvatar(
                child: Text('$index'),
              ),
            ),
          );
        },
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        staggeredTileBuilder: (int i) {
          return i >= _tiles.length ? null : _tiles[i];
        },
      ),
    );
  }
}
