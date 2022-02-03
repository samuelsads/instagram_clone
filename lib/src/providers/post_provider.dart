


import 'package:instagram_clone/src/models/post_model.dart';

class PostProvider{
  List<Post> _post=[
    Post(
      name: 'Shank',
      title: 'Selfie pa la banda',
      urlAvatar:'https://alfabetajuega.com/hero/2018/10/alfabetajuega_shanks.jpg?width=1200&aspect_ratio=1200:631',
      post: 'https://columnacero.com/pic/27225/one-piece-por-esta-razon-blackbeard-marco-con-la-cicatriz-a-shanks.jpg',
      totalComment: 10
      ),
      Post(
      name: 'Naturo',
      title: 'Con mi familia',
      urlAvatar:'https://pm1.narvii.com/6534/2dc2bbbc2c45f6e2ed727b6b7f14cff618d13d1f_hq.jpg',
      post: 'https://img.wattpad.com/940c4af063460de3b1c761b626014af4b1771f4a/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f7457456d447a5a786d35476776673d3d2d3437312e313630633766333262316533613436353837373338323531383638382e6a7067?s=fit&w=720&h=720',
      totalComment: 10
      ),
    
  ];

  List<Post> get posts =>_post;
}