import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/model/categorynews_model.dart';
import 'package:news_app/model/headlinemodel.dart';


class NewsRepository{ // this will fetech the data from API

    Future<NewsChannelsHeadlinesModel> fetchNewsApi(String channelName)async{

      String url = 'https://newsapi.org/v2/top-headlines?sources=${channelName}&apiKey=cca39fa7be1c44c7a38c8866025b7dc9';
      final response =await http.get(Uri.parse(url));
      
       if (kDebugMode) {
      print(response.body);
    }
      if(response.statusCode==200){ // valid 
       
      final body = jsonDecode(response.body); // extracting the body from the Response 
      return NewsChannelsHeadlinesModel.fromJson(body);
      }
      else{
throw Exception("Error");
      }
       
    }


    Future<CategoryModel> fetechCategoriesApis(String input_category)async{

      String url = 'https://newsapi.org/v2/everything?q=${input_category}&apiKey=cca39fa7be1c44c7a38c8866025b7dc9';
      final response =await http.get(Uri.parse(url));
      
      if(response.statusCode==200){ // valid 
       
      final body = jsonDecode(response.body); // extracting the body from the Response 
      return CategoryModel.fromJson(body);
      }
       throw Exception("Error");
    }
}