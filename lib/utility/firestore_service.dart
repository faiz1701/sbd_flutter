import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirestoreService();

  static Future addCollectionData({
    String? collection,
    required Map<String, Object?> data,
  }) async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection(collection ?? 'undefined');
    return collectionReference.add(data);
  }

  static Future addDocumentData({
    String? collection,
    String? document,
    required Map<String, Object?> data,
  }) async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection(collection ?? 'undefined');
    return collectionReference.doc(document).update(data);
  }
}
