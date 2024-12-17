class ArticleModel {
  final String? title;
  final String? image;
  final String? subTitle;
  final String? author;
  final String? content;

  // Constructor
  ArticleModel({
    required this.title,
    required this.image,
    required this.subTitle,
    required this.author,
    required this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'] ?? 'No Title Available',
      image: json['urlToImage'] ?? 'https://media.istockphoto.com/id/174980034/photo/flag-of-palestine-in-the-west-bank.webp?a=1&b=1&s=612x612&w=0&k=20&c=_w7quu6nwXwceGIoz07UnmEsVmkonZI5fIdnZxGmMD8=',
      subTitle: json['description'] ?? 'No Description Available',
      author: json['author'] ?? 'No Author Available',
      content: json['content'] ?? 'No Content Available',
    );
  }
}
