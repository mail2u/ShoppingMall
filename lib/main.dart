import 'package:flutter/material.dart';
import 'package:flutter_application_1/states/authen.dart';
import 'package:flutter_application_1/states/buyer_services.dart';
import 'package:flutter_application_1/states/create_accont.dart';
import 'package:flutter_application_1/states/rider_services.dart';
import 'package:flutter_application_1/states/saler_services.dart';
import 'package:flutter_application_1/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  'buyerServices': (BuildContext context) => BuyerServices(),
  'riderServices': (BuildContext context) => RiderServices(),
  'salerServices': (BuildContext context) => SalerServices(),
};

String? initlalRoute;

void main() {
  initlalRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
