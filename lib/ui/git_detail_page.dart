import 'package:flutter/material.dart';

class GifDetailsPage extends StatelessWidget {
  final Map _gifData;

  GifDetailsPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _gifData['title'],
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(
          _gifData['images']['fixed_height']['url'],
        ),
      ),
    );
  }
}
