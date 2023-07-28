import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../onboarding/auth.dart';

class ManageData extends ChangeNotifier {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future submitData(BuildContext context, dynamic data) async {
    return FirebaseFirestore.instance
        .collection('myorders')
        .doc(Provider.of<Authpage>(context, listen: false).user.uid)
        .set(data);
  }
}
