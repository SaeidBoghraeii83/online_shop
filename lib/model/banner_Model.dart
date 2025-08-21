class Banner {
  String? id;
  String? categoryId;
  String? thumbnail;
  String? collectionId;

  Banner(this.id, this.categoryId, this.thumbnail, this.collectionId);

  factory Banner.fromMapJson(Map<String, dynamic> jsonObject) {
    return Banner(
      jsonObject['id'],
      jsonObject['categoryId'],
      'http://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
      jsonObject['collectionId'],
    );
  }
}
