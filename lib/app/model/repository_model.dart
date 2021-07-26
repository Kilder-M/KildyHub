class RepositoryModel {
  int id;
  String name;
  String language;
  int stargazersCount;
  

  RepositoryModel({this.id, this.name, this.language, this.stargazersCount});

  RepositoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    language = json['language'];
    stargazersCount = json['stargazers_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['language'] = this.language;
    data['stargazers_count'] = this.stargazersCount;
    return data;
  }
}