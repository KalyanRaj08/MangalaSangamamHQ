import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:firebase_core/firebase_core.dart' as fc;

class Storage {
  final fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  Future<void> uploadFile(
    String filePath,
    String fileName,
  ) async {
    File file = File(filePath);
    await storage.ref('image/$fileName').putFile(file);
  }

  Future<fs.ListResult> listFiles() async {
    fs.ListResult results = await storage.ref('image').listAll();
    results.items.forEach((fs.Reference ref) {});
    return results;
  }

  Future<String> downloadURL(String imageName) async {
    String downloadURL = await storage.ref('image/$imageName').getDownloadURL();
    return downloadURL;
  }

  Future<void> deletefile(String imageName) async {
    await storage.ref('image/$imageName').delete();
  }
}
