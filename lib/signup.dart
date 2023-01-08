//import 'dart:html';
import 'package:Afleet/logincred.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
//import 'netcloud.dart';
//import 'reg2.dart';
//import 'package:flutter/material.dart';

class regS extends StatefulWidget {
  const regS({Key? key}) : super(key: key);

  @override
  _regSState createState() => _regSState();
}

class _regSState extends State<regS> {
  final titleController = TextEditingController();
  final titleController1 = TextEditingController();
  final titleController2 = TextEditingController();
  final titleController3 = TextEditingController();
  final titleController4 = TextEditingController();
  final titleControllerv = TextEditingController();

  var passtok;
  var userid;
  var userid1;
  var userid2;
  var userid3;
  int State = 0;
  int State2 = 0;
  Future createAlbumX() async {
    http.Response response1 = await http.post(
      Uri.parse('https://afleet.co.ke/api-token-auth/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': titleController2.text,
        'password': titleController3.text,
      }),
    );
    print(response1.statusCode);
    //works => print(token['token']);
    setState(() {
      State2 = response1.statusCode;
    });
    var token = jsonDecode(response1.body);

    if (response1.statusCode == 200) {
      setState(() {
        print(token);
        passtok = token['token'].toString();
        userid = token['user_id'].toString();
      });

      //});

    }
  }

  Future studentsX() async {
    List hey = [
      {
        "headline": "Aerospace",
        "hw": "samdhing real",
        "hwdeadline": "samng real",
        "Class": "samng real",
        "school": "samdhing real",
        "month": "none",
        "day_taught": "Monday",
        "time_duration": "2 hours",
        "time_taught": "8:00 am",
        "code": "001",
        "teacher": "teacher s",
        "place_taught": "icenter"
      },
      {
        "headline": "Integers",
        "hw": "samdhing real",
        "hwdeadline": "samng real",
        "Class": "samng real",
        "school": "samdhing real",
        "month": "none",
        "day_taught": "Thursday",
        "time_duration": "2 hours",
        "time_taught": "8:00 am",
        "code": "00000087",
        "teacher": "math teacher",
        "place_taught": "Xlabs"
      },
      {
        "headline": "Math",
        "hw": "samdhing real",
        "hwdeadline": "samng real",
        "Class": "samng real",
        "school": "samdhing real",
        "month": "none",
        "day_taught": "Tuesday",
        "time_duration": "2 hours",
        "time_taught": "8:00 am",
        "code": "878259",
        "teacher": "Teacher mindo",
        "place_taught": "icenter"
      },
      {
        "headline": "Science",
        "hw": "samdhing real",
        "hwdeadline": "samng real",
        "Class": "samng real",
        "school": "samdhing real",
        "month": "none",
        "day_taught": "Wednesday",
        "time_duration": "2 hours",
        "time_taught": "8:00 am",
        "code": "878259",
        "teacher": "Teacher mindo",
        "place_taught": "icenter"
      },
      {
        "headline": "Social Studies",
        "hw": "samdhing real",
        "hwdeadline": "samng real",
        "Class": "samng real",
        "school": "samdhing real",
        "month": "none",
        "day_taught": "Wednesday",
        "time_duration": "2 hours",
        "time_taught": "2:00 pm",
        "code": "0000989",
        "teacher": "teacher s",
        "place_taught": "Xlabs"
      },
      {
        "headline": "Technology",
        "hw": "samdhing real",
        "hwdeadline": "samng real",
        "Class": "samng real",
        "school": "samdhing real",
        "month": "none",
        "day_taught": "Friday",
        "time_duration": "2 hours",
        "time_taught": "2:00 pm",
        "code": "878259",
        "teacher": "math teacher",
        "place_taught": "icenter"
      }
    ];
    http.Response response1 = await http.post(
      Uri.parse('https://afleet.co.ke/students/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          "School": "RIOT",
          "username": titleController2.text,
          "adm_no": "001",
          "firstname": titleControllerv.text,
          "lastname": titleController.text,
          "Class": "eastboys",
          "Subjects": hey.toString(),
          "profpic": "jello"
        },
      ),
    );
    print(response1.statusCode);
    //works => print(token['token']);
    setState(() {
      State2 = response1.statusCode;
    });
    var token = jsonDecode(response1.body);

    if (response1.statusCode == 200) {
      setState(() {
        print(token);
        passtok = token['token'].toString();
        userid = token['user_id'].toString();
      });

      //});

    }
  }

  Future createAlbum() async {
    http.Response response1 = await http.post(
      Uri.parse('https://afleet.co.ke/register/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        //'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        /*
        primadonnna
        */
        'username': titleController2.text,
        'password': titleController3.text,
        'password2': titleController4.text,
        'email': titleController1.text,
        'first_name': titleControllerv.text,
        'last_name': titleController.text,
      }),
    );

    //works => print(token['token']);

    var token = jsonDecode(response1.body);

    print(token);
    print(response1.statusCode);
    //works => print(token['token']);
    setState(() {
      State = response1.statusCode;
    });
    //var token = jsonDecode(response1.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text("Register",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: titleControllerv,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      //fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'First name',
                      hintText: 'Enter Your first name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      //fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: 'Second name',
                      hintText: 'Enter Your Second name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: titleController1,
                  //obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      //fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),

                      //border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter Email'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: titleController2,
                  //obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      //fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),

                      //border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Choose your nickname'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: titleController3,
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      //fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),

                      //border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: titleController4,
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      //fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),

                      //border: OutlineInputBorder(),
                      labelText: 'Re-enter Password',
                      hintText: 'Enter secure pasword'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      createAlbum();

                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            child: Center(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                  Text("User Account Created"),
                                  FlatButton(
                                    color: Colors.deepPurple,
                                    onPressed: () {
                                      throughway(
                                          username: titleController2.text,
                                          password: titleController3.text);
                                      setState(() {
                                        createAlbumX();
                                        //studentsX();
                                        if (State2 == 200) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                 throughway(
                                          username: titleController2.text,
                                          password: titleController3.text),
                                              ));
                                        }
                                        ;
                                      });
                                      //print(State);
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ) //:CircularProgressIndicator()
                                ])),
                          );
                        },
                      );
                    }
                        // createAlbumX();
                        );
                  },
                  child: State == 400
                      ? Text(
                          'retry',
                          style: TextStyle(color: Colors.red, fontSize: 25),
                        )
                      : Text(
                          'create',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              Text(
                  '(Sign up is beta,main purpose is to allow you to use Afleet)' +
                      '\n' +
                      '',
                  textAlign: TextAlign.center)
            ],
          ),
        ));
  }
}
