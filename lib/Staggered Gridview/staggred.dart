import 'package:flutter/material.dart';
import 'package:luminar_assignments/Staggered%20Gridview/staggred.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(home: staggered_gridvieww()));
}

class staggered_gridvieww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyle =
    const[
            StaggeredTile.count(2, 2),
            StaggeredTile.count(2, 2),
            StaggeredTile.count(2, 2),
            StaggeredTile.count(2, 2),
          ];
    List<Customchild> _Customchild =
    const[
      Customchild(
              images:
                  ("https://images.unsplash.com/photo-1418489098061-ce87b5dc3aee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG5hdHVyYWx8ZW58MHx8MHx8&w=1000&q=80"),
              text2: "hi",
              text3: "hello"),
            Customchild(
              images:
                  "https://images.unsplash.com/photo-1433086966358-54859d0ed716?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
              text2: "hi",
              text3: "hello"),
              Customchild(
                images:
                    "https://images.unsplash.com/reserve/unsplash_524010c76b52a_1.JPG?ixlib=rb-4.0.3",
                text2: "hi",
                text3: "hello"),
                Customchild(
                    images:
                        "https://images.unsplash.com/reserve/unsplash_524010c76b52a_1.JPG?ixlib=rb-4.0.3",
                    text2: "hi",
                    text3: "hello"),
          ];
    return Scaffold(
        appBar: AppBar(
        title: Text(
        "Staggered Gridview",
    ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
    ),
    ),);
  }
}

class Customchild extends StatelessWidget {
  final String images;
  final String text2;
  final String text3;

  Customchild({required this.images, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(images),
          Text(text2),
          Text(text3),
        ],
      ),
    );
  }
}
