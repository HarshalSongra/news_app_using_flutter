import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/dataFile/data.dart';
import 'package:news_app/dataFile/news.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/article_view.dart';

import 'category_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> articles = new List<ArticleModel>();
  bool loading = true;
  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }
  getNews() async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("News", style: TextStyle(color: Colors.lightBlueAccent),),
              Text("App"),
            ],
          ),
          elevation: 0.0,
        ),
        body: loading ? Center(
          child: Container(
            child: CircularProgressIndicator(),
          ),
        ) : SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: <Widget>[
                ///Categories
                Container(

                  height: 70,
                  child: ListView.builder(
                    itemCount: categories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index){
                      return CategoryTile(
                        imageURL: categories[index].imageURL,
                        categoryName: categories[index].categoryName,
                      );
                      },),
                ),

              /// Blogs
              Container(
                padding: EdgeInsets.only(top: 15),
                child: ListView.builder(
                    itemCount: articles.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index){
                       return BlogTile(
                         imageUrl: articles[index].urlToImage,
                         title: articles[index].title,
                         desc: articles[index].description,
                         url: articles[index].url,
                       );
                    }),
              ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

class CategoryTile extends StatelessWidget {
  final imageURL, categoryName;
  CategoryTile({this.imageURL, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(
          builder: (context) => CategoryView(
            category: categoryName.toLowerCase(),
          )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 13),
        child: Stack(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: CachedNetworkImage(imageUrl: imageURL, width: 120, height: 60, fit: BoxFit.cover,)),
            Container(
              alignment: Alignment.center,
              width: 120, height: 60,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(7),
              ),

              child: Text(categoryName, style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),),
            )
          ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc, url;
  BlogTile({@required this.imageUrl,@required this.title,@required this.desc,@required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(
          builder: (context) => ArticleView(
            blogUrl: url,
          )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(imageUrl)),
            SizedBox(height: 8,),
            Text(title, style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            SizedBox(height: 5,),
            Text(desc, style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),),
          ],
        ),
      ),
    );
  }
}

