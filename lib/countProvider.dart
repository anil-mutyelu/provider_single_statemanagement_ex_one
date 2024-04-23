import 'package:flutter/cupertino.dart';

class countp with ChangeNotifier
{
  int _count= 50;

int get count => _count;

void setCount()
{
  _count++;
  notifyListeners();
}

}