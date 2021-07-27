import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_api/app/model/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  

  const UserCard({Key key, this.user, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.cyanAccent[400])
          ),
          width: double.infinity,
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.ltr,
              
              children: [
                circleImage(user.avatarUrl),
                SizedBox(width: 5,),
                
              Column(
                children: [
                  
                  Text(user.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyanAccent[400]),),
                  SizedBox(height: 5,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Text('${user.publicRepos}', style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                SizedBox(width: 1,),
                Text(' repositórios', style: TextStyle(fontSize: 12,),),
                SizedBox(width: 8,),
                Text('${user.followers}', style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                SizedBox(width: 1,),
                Text(' seguidores', style: TextStyle(fontSize: 12),),
                SizedBox(width: 8,),
                Text('${user.following}', style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                Text(' seguindo', style: TextStyle(fontSize: 12,),),
          
              ],),  
                ],
                
              )
            ],),
          ),
        )
      );

  }
}

Widget circleImage(String url) {
  return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(url)),
      ));
}