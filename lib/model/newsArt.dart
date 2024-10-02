class NewsArt{

  String imageURL;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt({
    required this.imageURL,
    required this.newsHead,
    required this.newsDes,
    required this.newsCnt,
    required this.newsUrl,
});

  static NewsArt fromAPItoAPP(Map<String, dynamic> article){
    return NewsArt(
        imageURL: article["urlToImage"] ?? "https://imgs.search.brave.com/LUXEhrwudhyOKMCrUvkwe5ajeIwbTkIHxOeexkkOru0/"
            "rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTM1/MTcwNTg2NC9waG90/by90aGUtd29yZHMt"
            "/YnJlYWtpbmctbmV3/cy1vbi1hbi1hYnN0/cmFjdC1iYWNrZ3Jv/dW5kLndlYnA_Yj0x/JnM9MTcwNjY3YSZ3/PTAmaz0yMCZjPVFw/YTZ0"
            "REZNTEVlNno0/YW5JU0NRYlB0eElp/eC1FeXo5UTdxS3ZC/bEp0VGM9",
        newsHead: article["title"] ?? "--",
        newsDes: article["description"] ?? "--",
        newsCnt: article["content"] ?? "--",
        newsUrl: article["url"] ?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }

}