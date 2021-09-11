class Channel {
  int id;
  int userId;
  int channelName;
  int subscriber;
  String bannerUrl;

  Channel({
    required this.id,
    required this.userId,
    required this.channelName,
    required this.subscriber,
    required this.bannerUrl,
  });

  factory Channel.fromJson(Map<String, dynamic> json) {
    return Channel(
      id: json['id'],
      userId: json['userId'],
      channelName: json['channelName'],
      subscriber: json['subscriber'],
      bannerUrl: json['bannerUrl'],
    );
  }
}
