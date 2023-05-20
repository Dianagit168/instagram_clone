class UserModel {
  int id;
  String? username;
  String? image;
  String? caption;
  int like;
  int time;
  List<String> postimage;
  String location;

  UserModel({
    this.image,
    this.username,
    required this.id,
    this.caption,
    required this.like,
    required this.postimage,
    required this.time,
    required this.location,
  });
}

List<UserModel> chat = [
  UserModel(
    id: 1,
    image: 'assets/images/husky4.jfif',
    username: 'Husky',
    like: 10,
    postimage: [],
    time: 30,
    caption: '',
    location: '',
  ),
  UserModel(
    id: 2,
    username: 'Jack',
    image: 'assets/images/Jack.jfif',
    like: 20,
    postimage: [],
    time: 40,
    caption: '',
    location: '',
  ),
  UserModel(
    id: 3,
    username: 'Chan',
    image: 'assets/images/chan.jpg',
    like: 30,
    postimage: [],
    time: 50,
    caption: '',
    location: '',
  ),
];
List<dynamic> photo = [
  'assets/images/husky1.jfif',
  'assets/images/husky4.jfif',
  'assets/images/IMG_4290.jpg',
  'assets/images/IMG_4404.jpg',
  'assets/images/Jack.jfif',
  'assets/images/jasmin.jpg',
  'assets/images/Riem.jpg',
  'assets/images/chan.jpg',
  'assets/images/husky1.jfif',
  'assets/images/husky4.jfif',
  'assets/images/IMG_4290.jpg',
  'assets/images/IMG_4404.jpg',
  'assets/images/Jack.jfif',
  'assets/images/jasmin.jpg',
  'assets/images/Riem.jpg',
  'assets/images/chan.jpg',
  'assets/images/husky1.jfif',
  'assets/images/husky4.jfif',
  'assets/images/IMG_4290.jpg',
  'assets/images/IMG_4404.jpg',
  'assets/images/Jack.jfif',
  'assets/images/jasmin.jpg',
  'assets/images/Riem.jpg',
  'assets/images/chan.jpg',
  'assets/images/husky1.jfif',
  'assets/images/husky4.jfif',
  'assets/images/IMG_4290.jpg',
  'assets/images/IMG_4404.jpg',
  'assets/images/Jack.jfif',
  'assets/images/jasmin.jpg',
  'assets/images/Riem.jpg',
  'assets/images/chan.jpg',
];

List<UserModel> favoritePeople2 = [
  UserModel(
    id: 1,
    image: 'assets/images/husky4.jfif',
    username: 'Husky',
    like: 10,
    postimage: [],
    time: 30,
    caption: '',
    location: '',
  ),
  UserModel(
    id: 2,
    username: 'Jack',
    image: 'assets/images/Jack.jfif',
    like: 20,
    postimage: [],
    time: 40,
    caption: '',
    location: '',
  ),
  UserModel(
    id: 3,
    username: 'Chan',
    image: 'assets/images/chan.jpg',
    like: 30,
    postimage: [],
    time: 50,
    caption: '',
    location: '',
  ),
];
List<UserModel> favoritePeople = [
  UserModel(
    id: 1,
    image: 'assets/images/husky4.jfif',
    username: 'Husky',
    like: 10,
    postimage: [],
    time: 30,
    caption: '',
    location: '',
  ),
  UserModel(
    id: 2,
    username: 'Jack',
    image: 'assets/images/Jack.jfif',
    like: 20,
    postimage: [],
    time: 40,
    caption: '',
    location: '',
  ),
  UserModel(
    id: 3,
    username: 'Chan',
    image: 'assets/images/chan.jpg',
    like: 30,
    postimage: [],
    time: 50,
    caption: '',
    location: '',
  ),
];
