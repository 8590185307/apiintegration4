import 'dart:convert';

import 'package:apiintegration2/Products.dart';
import 'package:apiintegration2/ResponseMain.dart';
import 'package:flutter/material.dart';
import 'Comments.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child:  FutureBuilder(
          future: fetchproducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var  plist = snapshot.data as List<Products>;
              return ListView.builder(
                shrinkWrap: true,
                itemCount: plist == null ? 0 : plist.length,
                itemBuilder: (BuildContext context, int index) {
                  Products st = plist[index];
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Image.network('${plist[index].thumbnail}',fit:BoxFit.cover,height: 100,width: 100,),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            child: Column(
                              children: <Widget>[
                                Text('title: ${st.title}'),

                                Text('brand: ${st.brand}'),
                                Text('category: ${st.category}'),
                                Text('description: ${st.description}'),
                                Text('price: ${st.price}'),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
