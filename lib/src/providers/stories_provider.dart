


import 'package:instagram_clone/src/models/stories_model.dart';

class StoriesProvider{
  List<Stories> _stories = [
    Stories(
      uuid:'1',
      name:'Tu historia',
      image:'https://st.depositphotos.com/1020341/4233/i/600/depositphotos_42333899-stock-photo-portrait-of-huge-beautiful-male.jpg'
    ),
    Stories(
      uuid: '2',
      name:'Naruto',
      image: 'https://pm1.narvii.com/6534/2dc2bbbc2c45f6e2ed727b6b7f14cff618d13d1f_hq.jpg'
    ),
    Stories(
      uuid: '3',
      name:'Shank',
      image: 'https://alfabetajuega.com/hero/2018/10/alfabetajuega_shanks.jpg?width=1200&aspect_ratio=1200:631'
    )
  ];

  List<Stories> get stories =>_stories;

}