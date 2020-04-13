import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const List<StaggeredTile> _tiles = const <StaggeredTile>[
  const StaggeredTile.extent(2, 50.0),
  const StaggeredTile.extent(1, 180.0),
  const StaggeredTile.extent(1, 160.0),
  const StaggeredTile.extent(3, 140.0),
  const StaggeredTile.extent(1, 120.0),
  const StaggeredTile.extent(4, 130.0),
  const StaggeredTile.extent(1, 50.0),
  const StaggeredTile.extent(2, 60.0),
  const StaggeredTile.extent(1, 130.0),
  const StaggeredTile.extent(3, 140.0),
  const StaggeredTile.extent(1, 60.0),
  const StaggeredTile.extent(1, 150.0),
];

class SpannableCountExtentPage extends StatelessWidget {
  static const String route = '/spannable_count_extent';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spannable (Count, Count)'),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: _tiles.length,
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
