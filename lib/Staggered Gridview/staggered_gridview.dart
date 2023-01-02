import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(home: Staggered_Gridd()));
}

class Staggered_Gridd extends StatelessWidget {
  //const StaggeredAssign({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyle = const [
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
    ];

    List<Customchild> _tiles = const [
      Customchild(
          image:
          'https://images.unsplash.com/photo-1602094395895-fb8070114e38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGtvY2hpfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
          title: 'Sunset',
          subtitle: '20 June 2022'),
      Customchild(
          image:
          'https://images.unsplash.com/photo-1608768025783-3c2b04d00f21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGxvd3xlbnwwfHwwfHw%3D&w=1000&q=80',
          title: 'City view',
          subtitle: '20 July 2022'),
      Customchild(
          image:
          'https://media.istockphoto.com/id/1345840955/photo/sunset-at-the-beach-near-the-village-of-zoutelande-on-the-coast-of-the-province-zeeland.jpg?b=1&s=170667a&w=0&k=20&c=VNaesdGPS2IC6kYk6Y-vlYLCQFqSRCmghAn20kNXTg0=',
          title: 'Sunrise',
          subtitle: '20 August 2022'),
      Customchild(
          image:
              'https://images.unsplash.com/photo-1607992922515-7e38329e65d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJlJTIwaW1hZ2VzfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
          title: 'Nature',
          subtitle: '20 September 2022'),
      Customchild(
          image: 'https://images.unsplash.com/photo-1504732099162-d8c9d5ba3bfd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c29sbyUyMHRyYXZlbGxlcnxlbnwwfHwwfHw%3D&w=1000&q=80'
              ,
          title: 'Solo Traveller',
          subtitle: '20 December2022')
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Gridview'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          staggeredTiles: _staggeredStyle,
          children: _tiles,
        ),
      ),
    );
  }
}

class Customchild extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const Customchild({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(image),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(subtitle),
                ],
              ),
            )
          ],
        ));
  }
}