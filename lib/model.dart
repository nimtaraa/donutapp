import 'package:donutapp/itemm.dart';
import 'package:flutter/foundation.dart';
class cartmodel extends ChangeNotifier{

List cartitems=[];
List items=[];






void additemtocart(List newitem,int index){

items=newitem;

cartitems.add(items);
notifyListeners();

print(cartitems);




}

void removeitem(int index){

cartitems.removeAt(index);
notifyListeners();



}

String calculation(){

double totalprice=0;

for (int j = 0; j < cartitems.length; j++) {

  totalprice+=double.parse(cartitems[j][2]);
  
}

return totalprice.toStringAsFixed(2);

}





}