class Books_model {
  String? bookId;
  String? position;
  String? name;
  String? cover;
  double? rating;
  String? url;

  Books_model(
      {this.bookId,
      this.position,
      this.name,
      this.cover,
      this.rating,
      this.url});

  Books_model.fromJson(Map<String, dynamic> json) {
    bookId = json['book_id'];
    position = json['position'];
    name = json['name'];
    cover = json['cover'];
    rating = json['rating'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['book_id'] = this.bookId;
    data['position'] = this.position;
    data['name'] = this.name;
    data['cover'] = this.cover;
    data['rating'] = this.rating;
    data['url'] = this.url;
    return data;
  }
}