class MeowModel {
  String file;

  MeowModel(this.file);

  MeowModel.fromJSON(Map<String, dynamic> json) {
    this.file = json['file'];
  }
}
