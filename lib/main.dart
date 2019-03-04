import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:saleandstorage/random.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
       home: new Scaffold(
         appBar:  new AppBar(
           title: new Text("hyd study"),
         ),
         body : Row(
            children: <Widget>[
              new Expanded(child: Text("this is flutter example !"))
              ,new Text("heikkkk")
            ],
         ),

       ),
    );
  }
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text(
//            "hyd study",
//          ),
//          backgroundColor: Colors.blue.shade100,
//        ),
//        body: new Row(
//          children: <Widget>[
//            const FlutterLogo(),
//            const Expanded(
//                child: Text("Flutter\'s hot reload help you\n"
//                    "quickly and easyliy experiment")),
//            const Icon(Icons.sentiment_very_satisfied),
//          ],
//        ),
//      ),
//    );
//  }
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text(
//            "hyd study",
//          ),
//          backgroundColor: Colors.blue.shade100,
//        ),
//        body: new Row(
//          children: <Widget>[
//            new Expanded(
//                child: Text("First Text", textAlign: TextAlign.center)),
//            new Expanded(
//                child: Text("Second Text ", textAlign: TextAlign.center)),
//            new Expanded(
//                child: FittedBox(
//              fit: BoxFit.contain,
//              child: const FlutterLogo(),
//            )),
//          ],
//        ),
//
//      ),
//    );
//  }
//  @override
//  Widget build(BuildContext context) {
//    Container(
//      constraints: BoxConstraints.expand(
//        height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
//      ),
//      padding: const EdgeInsets.all(8.0),
//      color: Colors.teal.shade700,
//      alignment: Alignment.center,
//      child: Text('Hello World', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
//      foregroundDecoration: BoxDecoration(
//        image: DecorationImage(
//          image: NetworkImage('https://www.example.com/images/frame.png'),
//          centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//        ),
//      ),
//      transform: Matrix4.rotationZ(0.1),
//    );
//  }
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Center(
//      child: Container(
//        constraints: BoxConstraints.expand(
//          height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
//        ),
//        padding:const EdgeInsets.all(8.0),
//        color: Colors.teal.shade700,
//        alignment: Alignment.center,
//        child: new Text("Hello world",
//          style: Theme.of(context)
//              .textTheme.display1.copyWith(color: Colors.white),),
//        foregroundDecoration:
//        BoxDecoration(image: DecorationImage(image:
//        NetworkImage('http://pic22.nipic.com/20120714/9622064_105642209176_2.jpg'),
//        centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),),),
//        transform: Matrix4.rotationZ(0.1),
//      ),
//
//    );
//  }
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Welcome to Flutter',
//      theme: new ThemeData(primaryColor:  Colors.white),
//      home:
////          child: const Text('Hello World'),
//
//          RandomWords(),
//    );
//  }
}
