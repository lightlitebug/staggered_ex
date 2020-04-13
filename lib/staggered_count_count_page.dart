import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const List<StaggeredTile> _tiles = const <StaggeredTile>[
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
];

class StaggeredCountCountPage extends StatelessWidget {
  static const String route = '/staggered_count_count';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered (Count, Count)'),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
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
