class Video {
  int id;
  String title;
  String videoUrl;
  String thumbnail;
  String description;
  int channelId;
  int like;
  int dislike;

  Video({
    required this.id,
    required this.title,
    required this.videoUrl,
    required this.thumbnail,
    required this.description,
    required this.channelId,
    required this.like,
    required this.dislike,
  });
}

List<Video> videos = [
  Video(
    id: 2,
    title: 'WONDERLAND INDONESIA by Alffy Rev (ft. Novia Bachmid)',
    videoUrl: '/videos/path/wonderland_indonesia.mp4',
    thumbnail: '/videos/thumbnail/wonderland_indonesia.png',
    description: 'This is the description',
    channelId: 1,
    like: 20000,
    dislike: 1800,
  ),
  Video(
    id: 1,
    title: 'Energy18 - Bright As The Sun - Official Song Asian Games 2018',
    videoUrl: '/videos/path/bright_as_the_sun.mp4',
    thumbnail: '/videos/thumbnail/bright_as_the_sun.png',
    description: 'This is the description',
    channelId: 1,
    like: 164000,
    dislike: 1900,
  ),
];
