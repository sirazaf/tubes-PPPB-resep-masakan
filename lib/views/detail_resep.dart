import 'package:flutter/material.dart';
import 'package:tubes_masakan_1/views/widgets/recipe_card.dart';

class DetailResep extends StatelessWidget {
  final String name;
  final String images;
  final String rating;
  final String totalTime;
  final String descriptions;
  final String videoUrl;

  DetailResep(
      {this.name,
      this.images,
      this.rating,
      this.totalTime,
      this.descriptions,
      this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Resep Masakan')
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            RecipeCard(
              title: name,
              cookTime: totalTime,
              rating: rating,
              thumbnailUrl: images,
              videoUrl: videoUrl,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Deskripsi',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(descriptions,
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.justify),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
