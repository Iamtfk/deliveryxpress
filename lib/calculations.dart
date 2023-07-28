import 'package:flutter/material.dart';
import 'package:newapp/firebase/Managedata.dart';
import 'package:provider/provider.dart';

class Calculation with ChangeNotifier {
  int qtty = 0;
  int cartdata = 0;

  int get getqtty => qtty;
  int get getcartdata => cartdata;

  increaseqtty() {
    qtty++;
    notifyListeners();
  }

  decreaseqtty() {
    qtty--;
    notifyListeners();
  }

  removedata() {
    qtty = 0;
    notifyListeners();
  }

  Addtocart(BuildContext context, dynamic data) async {
    cartdata++;
    await Provider.of<ManageData>(context, listen: false)
        .submitData(context, data);
    notifyListeners();
  }
}
