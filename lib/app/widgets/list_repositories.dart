import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_api/app/model/user_model.dart';

class RepositoryList extends StatelessWidget {

  final UserModel user;

  const RepositoryList({ Key key, this.user }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
                              width: double.infinity,
                              height: 500,
                              child: ListView.builder(
                                  itemCount: user.repositories.length,
                                  itemBuilder: (context, i) {
                                    var repositories = user.repositories[i];
                                    var repositorieLanguage = (user.repositories[i].language == null) ? '' : user.repositories[i].language;
                                    return Card(
                                        elevation: 20,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ListTile(
                                          subtitle: Row(children: [
                                            Text('Linguagem: '),
                                            Text('${repositorieLanguage}'),
                                          ],),
                                          trailing: Container(
                                            width: 45,
                                            child: Row(
                                              children: [
                                                Text('${repositories.stargazersCount}'),
                                                Icon(Icons.star_border_outlined)
                                              ],
                                            ),
                                          ),
                                          title: Text(
                                            repositories.name,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                                
                                          ),
                                          
                                        )
                                        );
                                  }),
                            );
  }
}