import 'package:donutapp/itemm.dart';
import 'package:flutter/foundation.dart';
class cartmodel extends ChangeNotifier{

List cartitems=[];
List items=[];
List items1=[];
List favourite=[];





void additemtocart(List newitem,int index){

items=newitem;

cartitems.add(items);
notifyListeners();

print(cartitems);

}

void additemtofav(List favitem,int index){

items1=favitem;

favourite.add(items1);
notifyListeners();

print(favourite);

}



void removeitem(int index){

cartitems.removeAt(index);
notifyListeners();



}

String calculation(){

double totalprice=0;

for (int j = 0; j < cartitems.length; j++) {

  totalprice+=double.parse(cartitems[j][2].toString());
  
}

return totalprice.toStringAsFixed(2);

}





}