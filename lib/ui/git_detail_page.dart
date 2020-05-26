import 'package:flutter/material.dart';

import 'package:share/share.dart';

class GifDetailsPage extends StatelessWidget {
  final Map _gifData;

  GifDetailsPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    final _gifUrl = _gifData['images']['fixed_height']['url'];
    final _gifPathUrl = _gifData['url'];

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text(
          _gifData['title'],
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey[800],
            height: 0.5,
          ),
          preferredSize: Size.fromHeight(0.5),
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
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                child: Text(
                  _gifPathUrl,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Image.network(
                _gifUrl,
              )
            ],
          ),
        ),
      ),
    );
  }
}
