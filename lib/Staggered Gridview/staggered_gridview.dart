import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: staggered_gridvieww()
  ));
}

class staggered_gridvieww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Staggered Gridview",
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        staggeredTiles: [
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(1, 1),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(1, 1),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(2, 1),
        ],
        children: [
          Customchild(images: Image.network("https://images.unsplash.com/photo-1634962004378-767581c1abaf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aGltYWxheWFuJTIwYmlrZXxlbnwwfHwwfHw%3D&w=1000&q=80"),),
          Customchild(images: Image.network("https://images.unsplash.com/photo-1613738049398-5cc8ef6292fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGltYWxheWFuJTIwYmlrZXxlbnwwfHwwfHw%3D&w=1000&q=80"),),
          Customchild(text: Text("Devi Sai",style: TextStyle(fontWeight: FontWeight.bold),),),
          Customchild(images: Image.network("https://images.unsplash.com/photo-1634962004378-767581c1abaf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aGltYWxheWFuJTIwYmlrZXxlbnwwfHwwfHw%3D&w=1000&q=80"),),
          Customchild(text: Text("Devi Sai",style: TextStyle(fontWeight: FontWeight.bold),),),
          Customchild(images: Image.network("https://images.unsplash.com/photo-1634962004378-767581c1abaf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aGltYWxheWFuJTIwYmlrZXxlbnwwfHwwfHw%3D&w=1000&q=80"),),
          Customchild(text: Text("Devi Sai",style: TextStyle(fontWeight: FontWeight.bold),),),
          Customchild(text: Text("Devi Sai",style: TextStyle(fontWeight: FontWeight.bold),),),
               ],
      ),
    );
  }
}

class Customchild extends StatelessWidget {
  final Image? images;
  final Text? text;

  Customchild({this.images, this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: images,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0,right: 50,left: 20),
          child: Container(
            child: ListTile(
              title: images,
              subtitle: text,
            )
          ),
        )
      ],
    );
  }
}
