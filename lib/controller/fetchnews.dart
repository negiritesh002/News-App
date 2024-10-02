import "dart:convert";
import "dart:math";
import "package:http/http.dart";
import "package:newsapp/model/newsArt.dart";


class FetchNews{

  static List sourcesId = [
    "abc-news",

    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",

    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",

    "national-geographic",

    "news24",
    "new-scientist",

    "new-york-magazine",
    "next-big-future",

    "techcrunch",
    "techradar",

    "the-hindu",

    "the-wall-street-journal",

    "the-washington-times",
    "time",
    "usa-today",

  ];

  static Future<NewsArt> fetchnews() async{

    final _random = new Random();
    var SOURCEID = sourcesId[_random.nextInt(sourcesId.length)];
    print(SOURCEID);

    Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$SOURCEID&apiKey=2b3a832c69be4046beeb0c58112e892a"));

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    print(articles);

    final _Newrandom = new Random();
    var myArticle = articles[_random.nextInt(articles.length)];
    print(myArticle);

    return NewsArt.fromAPItoAPP(myArticle);

  }
}