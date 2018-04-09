import 'package:flutter/material.dart';

class KittenPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      title: new Text("Kitten page"),
    ),
    body: new ListView(
        children: <Widget>[
          new KittenTile("https://78.media.tumblr.com/tumblr_m2pppwjMnW1qhwmnpo1_1280.jpg"),
          new KittenTile("https://78.media.tumblr.com/tumblr_lhpp95XkW51qfyzelo1_1280.jpg"),
          new KittenTile("https://78.media.tumblr.com/tumblr_mcdrxmYMeW1qze0hyo1_400.jpg"),
          new KittenTile("https://78.media.tumblr.com/tumblr_m4gjqmNI3m1qhwmnpo1_1280.jpg")
        ],

    )
    );
  }

}

class KittenTile extends StatelessWidget {
  final String imageUrl;

  KittenTile(this.imageUrl);

  @override
  Widget build(BuildContext context) {

    return new Padding(
        padding: new EdgeInsets.only(bottom: 10.0),
        child: new Image.network(imageUrl,
            fit: BoxFit.cover)
    );
  }
}