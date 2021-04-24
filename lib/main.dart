import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_test/ui/cart.dart';
import 'package:provider_test/ui/favourites.dart';
import 'package:provider_test/ui/finish_order.dart';
import 'package:provider_test/ui/home_page.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  // home: Cart(),
  // home: Favourites(),
  home: FinishOrder(),
  // home: HomePage(),
));