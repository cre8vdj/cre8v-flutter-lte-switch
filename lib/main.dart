import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{Widget build(c)=>MaterialApp(home:MyHome());}
class MyHome extends StatefulWidget{State<MyHome> createState()=>_MyHomeState();}
class _MyHomeState extends State<MyHome>{
  String _network='Unknown';
  static const platform=MethodChannel('network_channel');
  Future<void> _switchLTE() async{
    try{await platform.invokeMethod('setPreferredNetwork','LTE');}catch(e){print(e);}
    var conn=await Connectivity().checkConnectivity();setState((){_network=conn.toString();});
  }
  @override Widget build(c)=>Scaffold(appBar:AppBar(title:Text('Network Switch')),body:ListView(children:[
    Text('Current: $_network'),
    ElevatedButton(onPressed:_switchLTE,child:Text('Force LTE Pref')),
  ]));
}
