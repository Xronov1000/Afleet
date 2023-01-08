import 'main.dart';
import 'package:flutter/material.dart';

class Gradebook2 extends StatelessWidget {
  Gradebook2({
    Key? key,
    required this.rxt,
    required this.kala1,
  }) : super(key: key);
  List rxt;
  bool kala1;
  //List rtx;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kala1 ? Colors.black : Colors.white,
        appBar: AppBar(
                    title: Text("Gradebook"),
                    centerTitle: true,
                  ),
        body: Center(
          child: Card(
              color: kala1 ? Colors.black : Colors.white,
              child: Column(
                children: [
                 
                  ListTile(
                    title: Text("Subject",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: !kala1 ? Colors.black : Colors.white,
                        )),
                    // trailing: Text("Grade",
                    //     style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ...rxt.map((e) => ListTile(
                        title: Text(
                          "${e['headline']}",
                          style: TextStyle(
                            color: !kala1 ? Colors.black : Colors.white,
                          ),
                        ),
                        //trailing: Text("${e['grade']}"),
                      ))
                ],
              )),
        ));
  }
}