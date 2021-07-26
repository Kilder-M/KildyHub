

import 'package:dio/dio.dart';
import 'package:git_api/app/exceptions/user_model_exception.dart';

import 'package:git_api/app/model/user_model.dart';
import 'package:git_api/app/model/repository_model.dart';


class UserRepository {
  var  url = "https://api.github.com/users/";
  var dio = Dio();


  Future<bool> userExists(String userName) async {
    
    final response = await dio.get(url + userName);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future <UserModel> getUser(String userName) async {
    try{
    final response = await dio.get(url + userName);
    final user = UserModel.fromJson(response.data);
    final responseRepository = await dio.get(url + userName + '/repos');
    user.repositories = (responseRepository.data as List).map((e) => RepositoryModel.fromJson(e)).toList();
    return user;
    }catch(e){
      throw UserModelException('Não foi possivel carregar o usuário.');
      
    }
  }


}

