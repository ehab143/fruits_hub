import 'package:cloud_firestore/cloud_firestore.dart';

import 'data_base_service.dart';

class FireStoreService implements DataBaseService {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? docId,
  }) async {
    if (docId != null) {
      await firebaseFirestore.collection(path).doc(docId).set(data);
    } else {
      await firebaseFirestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({
    required String path,
    String? docId,
    Map<String, dynamic>? query,
  }) async {
    if (docId != null) {
      var data = await firebaseFirestore.collection(path).doc(docId).get();
      return data.data();
    } else {
      Query<Map<String, dynamic>> data = firebaseFirestore.collection(path);

      if (query != null) {
        if (query['orderBy'] != null) {
          var orderByField = query['orderBy'];
          var descending = query['descending'];
          data = data.orderBy(orderByField, descending: descending);
        }
        if (query['limit'] != null) {
          var limit = query['limit'];
          data = data.limit(limit);
        }
      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String docId,
  }) async {
    var data = await firebaseFirestore.collection(path).doc(docId).get();
    return data.exists;
  }
}
