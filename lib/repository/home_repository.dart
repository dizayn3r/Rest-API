import 'package:flutter_rest_api/data/network/BaseApiServices.dart';
import 'package:flutter_rest_api/data/network/NetworkApiService.dart';
import 'package:flutter_rest_api/model/movies_model.dart';
import 'package:flutter_rest_api/res/app_url.dart';

class HomeRepository {

  BaseApiServices _apiServices = NetworkApiService() ;

  Future<MovieListModel> fetchMoviesList()async{

    try{

      dynamic response = await _apiServices.getGetApiResponse(AppUrl.moviesListEndPoint);
      return response = MovieListModel.fromJson(response);

    }catch(e){
      throw e ;
    }
  }

}