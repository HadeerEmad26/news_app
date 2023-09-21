import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/NewsDataModel.dart';
import 'package:news_app/models/SourcesResponse.dart';
import 'package:news_app/shared/components/costants.dart';

class ApiManager {
  static Future<SourcesResponse> getSources(String categoryId) async {
    Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources",
        {"apiKey": "ba6456480f5f43c08bcc997d43eb0873", "category": categoryId});
    var response = await http.get(url);
    print(response.body);
    var jsonData = jsonDecode(response.body);
    SourcesResponse sourcesResponse = SourcesResponse.fromJson(jsonData);

    return sourcesResponse;
  }

  static Future<NewsDataModel> getNewsData(String sourceId) async {
    Uri url = Uri.https(Constants.BASE_URL, "/v2/everything",
        {"apiKey": Constants.API_KEY, "sources": sourceId});
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    NewsDataModel newsDataModel = NewsDataModel.fromJson(jsonData);
    return newsDataModel;
  }
}
