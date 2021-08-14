import 'package:flutter/material.dart';
import 'package:newsapp/views/article_view.dart';

class NewsTile extends StatelessWidget {
  late final String imageURL, title, description, url;

  NewsTile(
      {required this.imageURL,
      required this.title,
      required this.description,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      url: url,
                    )));
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(imageURL)),
              SizedBox(height: 8),
              Text(title,
                  style: TextStyle(fontSize: 17, color: Colors.black87)),
              SizedBox(height: 8),
              Text(description, style: TextStyle(color: Colors.black54)),
            ],
          )),
    );
  }
}
