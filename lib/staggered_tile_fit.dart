import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredTileFit extends StatelessWidget {
  static const String route = '/staggered_tile_fit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('random dynamic tile sizes'),
      ),
      body: StaggeredGridView.countBuilder(
        primary: false,
        crossAxisCount: 2,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemCount: 100,
        itemBuilder: (context, index) {
          final Random rnd = Random();
          final int width = rnd.nextInt(500) + 200;
          final int height = rnd.nextInt(800) + 200;
          print('width: $width, height: $height');

          return Card(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    //new Center(child: new CircularProgressIndicator()),
                    Center(
                      child: Image.network(
                        'https://picsum.photos/$width/$height/',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Image number $index',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Width: $width',
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Height: $height',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
      ),
    );
  }
}
