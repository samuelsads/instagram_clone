import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/src/models/post_model.dart';


class PostWidget extends StatelessWidget {
  PostWidget({Key? key, required this.post}) : super(key: key);
  Post post;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Color(0xFFB93C57), width: 1)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: ClipOval(
                        child: Image.network(
                      post.urlAvatar,
                      fit: BoxFit.cover,
                      width: 25,
                      height: 25,
                    )),
                  ),
                ),
                Text(post.title),
                Spacer(),
                Icon(Icons.more_vert_rounded)
              ],
            ),
          ),
          Image.network(
              post.post),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsetsDirectional.all(5),
                    child: FaIcon(FontAwesomeIcons.heart)),
                Container(
                    margin: EdgeInsetsDirectional.all(5),
                    child: FaIcon(FontAwesomeIcons.comment)),
                Container(
                    margin: EdgeInsetsDirectional.all(5),
                    child: FaIcon(FontAwesomeIcons.paperPlane)),
                Spacer(),
                Container(
                    margin: EdgeInsetsDirectional.all(5),
                    child: FaIcon(FontAwesomeIcons.bookmark))
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text('13,474 Me gusta'),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text(post.title),
          ),
          Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text('Ver los 10 comentarios',
                  style: TextStyle(color: Colors.grey))),
          Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text('Hace 10 horas',
                  style: TextStyle(color: Colors.grey, fontSize: 10))),
        ],
      ),
    );
  }
}