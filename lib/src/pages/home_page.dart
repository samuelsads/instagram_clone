import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/src/models/post_model.dart';
import 'package:instagram_clone/src/models/stories_model.dart';
import 'package:instagram_clone/src/providers/post_provider.dart';
import 'package:instagram_clone/src/providers/stories_provider.dart';
import 'package:instagram_clone/src/widgets/post_widget.dart';
import 'package:instagram_clone/src/widgets/storie_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      title: const Text('Instagram'),
      actions: [
        IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.plusSquare,
              size: 20,
            )),
        IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.heart,
              size: 20,
            )),
        IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.paperPlane,
              size: 20,
            ))
      ],
    );
  }

  Widget _body() {
    return Container(
      child: Column(
        children: [_storiesList(), Divider(), _postList()],
      ),
    );
  }

  Widget _postList() {
    PostProvider provider  = PostProvider();
    List<Post> posts  = provider.posts;
    return Expanded(
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) => PostWidget(post: posts[index],)));
  }

 

  Container _storiesList() {
    StoriesProvider provider = StoriesProvider();
    List<Stories> stories = provider.stories;
    return Container(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) =>
              StorieWidget(storie: stories[index])),
    );
  }
}
