import 'package:flutter/material.dart';
import 'package:newsapp/helper/news_tile.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/helper/news.dart';

class CategoryNewsScreen extends StatefulWidget {
  late final String category;
  CategoryNewsScreen({required this.category});
  @override
  _CategoryNewsScreenState createState() => _CategoryNewsScreenState();
}

class _CategoryNewsScreenState extends State<CategoryNewsScreen> {
  List<ArticleModel> newsArticles = <ArticleModel>[];
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNews newsObject = CategoryNews();
    await newsObject.getNews(widget.category);
    newsArticles = newsObject.newsList;
    setState(() {
      _loading = false; //now the news has loaded
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Climate',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            Text('News',
                style: TextStyle(
                  color: Colors.white,
                )),
            SizedBox(
              width: 55,
            ),
          ],
        ),
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : Container(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 16),
                      child: ListView.builder(
                          itemCount: newsArticles.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return NewsTile(
                                url: newsArticles[index].url,
                                imageURL: newsArticles[index].urlToImage,
                                title: newsArticles[index].title,
                                description: newsArticles[index].description);
                          }),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
