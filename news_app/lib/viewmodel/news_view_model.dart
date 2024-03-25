import 'package:news_app/model/categorynews_model.dart';
import 'package:news_app/model/headlinemodel.dart';
import 'package:news_app/repository/newsrepository.dart';

class NewsViewModel{ 
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsApi(String channelName) async{
    final response =await _rep.fetchNewsApi(channelName);
    return response;
    
  }

   Future<CategoryModel> fetechCategoriesApis(String input_category) async{
    final response =await _rep.fetechCategoriesApis(input_category);
    return response;
    
  }
}