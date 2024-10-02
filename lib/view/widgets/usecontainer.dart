import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {

  String imageUrl;
  String NewsHead;
  String NewsDes;
  String NewsCnt;
  String NewsURL;

   NewsContainer({
    required this.imageUrl,
    required this.NewsHead,
    required this.NewsDes,
    required this.NewsCnt,
    required this.NewsURL
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInImage.assetNetwork(
            height: 400,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              placeholder: "assets/newspapers.webp",
              image: imageUrl),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(NewsHead,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
              SizedBox(height: 10),
              Text(NewsDes,style: TextStyle(fontSize: 15,color: Colors.black38,),),
              SizedBox(height: 10),
              Text(
                NewsCnt != "--" ?
                NewsCnt.length > 250 ? NewsCnt.substring(0,250)
                :"${NewsCnt.toString().substring(0,NewsCnt.length-15)}..." : NewsCnt,
                style: TextStyle(fontSize: 16),),
            ],
          ),),
        ),
        SizedBox(height: 10),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
        )
      ],),
    );
  }
}
