class NewsModels {
  String? author;
  String? title;
  String? description;
  String? url;
  String? utrlToImage;
  DateTime? publishedAt;
  String? content;

  NewsModels(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.utrlToImage,
      this.publishedAt,
      this.content});

  factory NewsModels.fromJson(Map<String, dynamic> obj) {
    return NewsModels(
        author: obj['author'],
        title: obj['title'],
        description: obj['description'],
        url: obj['url'],
        utrlToImage: obj['urlToImage'],
        publishedAt: DateTime.parse(obj['publishedAt']),
        content: obj['content']);
  }
}
