import "package:flutter/material.dart";

class DetailVideo extends StatefulWidget {
  const DetailVideo({Key key}) : super(key: key);

  @override
  State<DetailVideo> createState() => _DetailVideo();
}

class _DetailVideo extends State<DetailVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Video Resep')
          ],
        ),
      ),
    );
  }
}
