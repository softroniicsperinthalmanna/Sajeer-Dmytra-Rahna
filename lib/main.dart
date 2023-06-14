import 'package:dmithra/paymentmethodpage.dart';
import 'package:dmithra/postpage.dart';
import 'package:dmithra/shoppingpage.dart';
import 'package:flutter/material.dart';
import 'disablepage.dart';
import 'donateaccessories.dart';
import 'donateclothes.dart';
import 'donatefood.dart';
import 'donatemedical.dart';
import 'donatepage.dart';
import 'entertainment.dart';
import 'listpage.dart';
import 'onlineclass.dart';
import 'organizationpage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:paymentmethod(),
    );
  }
}