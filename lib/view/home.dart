import 'package:flutter/material.dart';
import 'package:newsapp/controller/fetchnews.dart';
import 'package:newsapp/model/newsArt.dart';
import 'package:newsapp/view/widgets/usecontainer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  bool isloading = true;

   late NewsArt newsArt;

  GetNews() async {
    newsArt = await FetchNews.fetchnews();
    setState(() {

      isloading = false;

    });
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          setState(() {
            isloading = true;
          });
          GetNews();
        },
        itemBuilder: (context, index) {
          return isloading ? Center(child: CircularProgressIndicator(),) : NewsContainer(
              imageUrl: newsArt.imageURL,
              NewsHead: newsArt.newsHead,
              NewsDes: newsArt.newsDes,
              NewsCnt: newsArt.newsCnt,
              NewsURL: newsArt.newsUrl);
        },
      ),
    );
  }
}
