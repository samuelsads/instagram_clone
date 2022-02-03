import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/src/models/stories_model.dart';



class StorieWidget extends StatelessWidget {
  StorieWidget({Key? key, required this.storie}) : super(key: key);

  Stories storie;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Color(0xFFB93C57), width: 2)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: ClipOval(
                        child: Image.network(
                      storie.image,
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    )),
                  ),
                ),
              ),
              Text(storie.name, style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,),
            ],
          ),
          (storie.uuid=='1')?
          Positioned(
            bottom: 25,
            right: 7,
            child: Container(
              alignment: Alignment.center,
              height: 23,
              width: 23,
              decoration: BoxDecoration(
                color: Color(0xFF0086CE),
                borderRadius: BorderRadius.circular(17),
                border:Border.all(color: Colors.black, width: 2)
              ),
              child: FaIcon(FontAwesomeIcons.plus, size: 10,),
            ),
          ):SizedBox.shrink()
        ],
      ),
    );
  }
}