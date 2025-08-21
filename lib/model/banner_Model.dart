class BannerModel {
  String? id;
  String? categoryId;
  String? thumbnail;
  String? collectionId;

  BannerModel(this.id, this.categoryId, this.thumbnail, this.collectionId);

  factory BannerModel.fromMapJson(Map<String, dynamic> jsonObject) {
    return BannerModel(
      jsonObject['id'],
      jsonObject['categoryId'],
      'http://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
      jsonObject['collectionId'],
    );
  }
}
