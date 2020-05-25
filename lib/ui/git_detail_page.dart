import 'package:flutter/material.dart';

import 'package:share/share.dart';

class GifDetailsPage extends StatelessWidget {
  final Map _gifData;

  GifDetailsPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    final _gifUrl = _gifData['images']['fixed_height']['url'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _gifData['title'],
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {
                Share.share(_gifUrl);
              })
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(
          _gifUrl,
        ),
      ),
    );
  }
}
