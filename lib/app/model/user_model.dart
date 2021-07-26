import 'package:git_api/app/model/repository_model.dart';

class UserModel {
  String name;
  int id;
  String avatarUrl;
  int followers;
  int following;
  int publicRepos;
  String location;
  List<RepositoryModel> repositories;

  UserModel(
      {this.name,
      this.id,
      this.avatarUrl,
      this.followers,
      this.following,
      this.publicRepos,
      this.location});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    avatarUrl = json['avatar_url'];
    followers = json['followers'];
    following = json['following'];
    publicRepos = json['public_repos'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['id'] = id;
    data['avatar_url'] = avatarUrl;
    data['followers'] = followers;
    data['following'] = following;
    data['public_repos'] = publicRepos;
    data['location'] = location;
    return data;
  }
}