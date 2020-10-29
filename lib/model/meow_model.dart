class MeowModel {
  String file;

  MeowModel(this.file);

  MeowModel.fromJSON(Map<String, String> json) {
    this.file = json['file'];
  }
}
