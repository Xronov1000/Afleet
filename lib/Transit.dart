//For Soldier boy we will always remember you!
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_widget/google_maps_widget.dart';
import 'dart:math' show cos, sqrt, asin;
import 'package:Afleet/mess.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'ads.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'notifications.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Transit extends StatefulWidget {
  Transit(
      {Key? key,
      required this.token,
      required this.miuser,
      required this.on,
      required this.cordx1,
      required this.bueno,
      required this.cordx2})
      : super(key: key);
  String token;
  String miuser;
  String on;
  int bueno;
  String cordx1;
  String cordx2;
  @override
  _TransitState createState() => _TransitState();
}

class _TransitState extends State<Transit> {
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  late Position _currentPosition;
  //const transit({Key? key}) : super(key: key);
  late GoogleMapController _googleMapController;
  List chuo = [];
  List badae = [];
  List badae3 = [];
  var hot1;
  var hot2;
  var stageloc;
  var musk;
  var v2prime;
  var sky4;
  var now;
  var leo;
  var sky2;
  var userid;
  List haro = [];
  var pos1;
  bool chiquitita = false;
  int ex = 0;
  var mypos1;
  var mypos2;
  var rxd;
  bool tileyell = true;
  var pos2;
  String cord = '';
  myp() async {
    //Position position = await Geolocator.getCurrentPosition(
    //    desiredAccuracy: LocationAccuracy.high);
    mypos1 = double.parse(stageloc.toString().split(',')[0]);
    mypos2 = double.parse(stageloc.toString().split(',')[1]);
  }

  onoop() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
/*
sharedPreferences.setString('yoi', yoi.toString());
    //value3 == null && value == null
    sharedPreferences.setString('this2', this2.toString());
    sharedPreferences.setString('info3', info3.toString());
    sharedPreferences.setString('profpic', profpic.toString());
    //value3 == null && value == null
    sharedPreferences.setString('alone', alone.toString());
*/
    //var mode = sharedPreferences.getBool('darkmode');
    var o2 = jsonDecode(sharedPreferences.getString('sky4'));
    var o3 = jsonDecode(sharedPreferences.getString('v2prime'));
    var o4 = jsonDecode(sharedPreferences.getString('musk'));
    var o5 = jsonDecode(sharedPreferences.getString('badae3'));
    var o6 = jsonDecode(sharedPreferences.getString('badae'));
    var o7 = jsonDecode(sharedPreferences.getString('hot1'));

    var o8 = jsonDecode(sharedPreferences.getString('cord'));
    var o9 = jsonDecode(sharedPreferences.getString('stageloc'));
    //var oo = jsonDecode(sharedPreferences.get('sky2'));
    // = jsonDecode(
    this.sky4 = o2; //jsonDecode(o2);
    this.v2prime = o3; //jsonDecode(o3);
    this.musk = o4;
    this.badae3 = o5;
    this.badae = o6;
    this.hot1 = o7;
    this.cord = o8;
    this.stageloc = o9;
    //this.sky2 = oo;
  }

  @override
  void initState() {
    super.initState();
    
    rxd = 150.2;
    onoop();
    myp();
    orderzangu();
    this.now = DateFormat('EEEE d MMM').format(DateTime.now());
    //returns json body from api
    //this.courseblock = result1;
    this.leo = DateFormat.jm().format(DateTime.now());

    // TODO: Initialize _bannerAd
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();
    late GoogleMapController _googleMapController;
    
  }

  @override
  void dispose() {
    _googleMapController.dispose();
    // super.dispose();
  }

  Widget bannerAdWidget() {
    return StatefulBuilder(
      builder: (context, setState) => Container(
        child: AdWidget(ad: _bannerAd),
        width: MediaQuery.of(context).size.width * .8,
        height: 100.0,
        alignment: Alignment.center,
      ),
    );
  }

  orderzangu() {
    var counter = 30;

    Timer.periodic(const Duration(seconds: 5), (timer) {
      //http req to  and from server
      counter++;
      xls(String order) {
        ex++;
        return ex < 3
            ? Ninotify.showNotification(
                id: 2,
                title: order,
                body: 'Your School Bus is almost at the stage',
                payload: 'r',
              )
            : "";
      }

      Future getWeatherxc() async {
        String token = widget.token.toString();

        var headers = {
          'Authorization': 'Token $token',
        };
//add message
//https://afleet.co.ke/transolution/
        http.Response
            v2rockets = //http://172.16.12.17:8000/ + http://192.168.100.74:8000/
            await http.get(Uri.parse('https://afleet.co.ke/transolution/'),
                headers: headers);
        http.Response
            v2 = //http://172.16.12.17:8000/ + http://192.168.100.74:8000/
            await http.get(Uri.parse('https://afleet.co.ke/rollcall/'),
                headers: headers);
        // https://afleet.co.ke/rollcall/
        http.Response
            responsev = //http://172.16.12.17:8000/ + http://192.168.100.74:8000/
            await http.get(Uri.parse('https://afleet.co.ke/Sbuss/'),
                headers: headers);
        var result = jsonDecode(responsev.body);
        var von2 = jsonDecode(v2.body);
        var von = jsonDecode(v2rockets.body);
        setState(() {
          List mt = [];
          List mt2 = [];

          this.sky4 = result;
          this.v2prime = von2;
          this.musk = von;
          final badae3 = musk.map(
              (cv) => cv['userN'] == widget.miuser ? mt2.add(cv['sc']) : null);
          final badae = musk.map((cv) => cv['userN'] == widget.miuser
              ? mt.add(cv['bi'])
              : null); //widget.miuser
          print(badae);
          //
          var cvdf = result.map((x) => mt.last.toString() == x['id'].toString()
              ? haro.add(result.indexOf(x))
              : '');
          print(cvdf);
          print("haro" + haro.last.toString());
          print(badae3);
          print(mt.last);
          mt.clear();

          //print("transit" + this.haro.toString());
          //print(aro);
          print(widget.bueno); //3
          //var guys = int.parse(xx.toList().last);
          this.hot1 = haro.last;
          cord = sky4[haro.last][
              'cordinates']; //choose your bus i.e bus number 2 or 3 or in prime example 0
          //print("oyaaaa" + sky4[haro.last]['cordinates'].toString());
          var rcdf = mt2.last;
          print(rcdf);
          stageloc = rcdf;
          haro.clear();

          print(musk);
          print(v2prime.last);

          

          
        });
        //print( sky['orders']);
      }
      raw() async {
            final SharedPreferences sharedPreferences =
                await SharedPreferences.getInstance();

            sharedPreferences.setString('sky4', json.encode(sky4));
            sharedPreferences.setString('v2prime', json.encode(v2prime));
            sharedPreferences.setString('musk', json.encode(musk));
            sharedPreferences.setString('badae3', json.encode(badae3));
            sharedPreferences.setString('badae', json.encode(badae));
            //sharedPreferences.setString('cvdf', json.encode(cvdf));
            sharedPreferences.setString('hot1', json.encode(hot1));
            sharedPreferences.setString('cord', json.encode(cord));
            //sharedPreferences.setString('rcdf', json.encode(rcdf));
            sharedPreferences.setString('stageloc', json.encode(stageloc));
          }

      if (counter == 0) {
        counter = 15;
        print('Cancel timer');
        timer.cancel();
      } else {
        getWeatherxc();
        raw();
        vc() async {
          //this use it on the bus area
          //Position position = await Geolocator.getCurrentPosition(
          //      desiredAccuracy: LocationAccuracy.high);
          mypos1 = double.parse(stageloc.toString().split(',')[0]);
          mypos2 = double.parse(stageloc.toString().split(',')[1]);
          //print("");

          print(mypos1);

          print(mypos1);
          //mypos1 = position.latitude; //var rcdf = mt2.last;
          //mypos2 = position.longitude;
        }

        ;
        vc();
        //print(sky4[0]['cordinates']);
        print('<<<<<<<<<${rxd}>>>>>>');
        if (rxd < 15.0) {
          print('<<<<<<<<<${rxd}>>>>>>');
          xls('The School bus is almost at the busstop');
        }

        if (rxd < 5.0) {
          setState(() {
            chiquitita = true;
          });

          print('<<<<<<<<<${rxd}>>>>>>');
          xls('The School bus is  at the busstop');
        } else {}
      }
    });
  }

  void rono2() {
    showDialog(
        //student id card here
        context: context,
        builder: (context) {
          /*  Future.delayed(Duration(seconds: 1), () {
              Navigator.of(context).pop(true);
            });*/
          return AlertDialog(
              title: Container(
                height: MediaQuery.of(context).size.width * 0.08,
                //color: Colors.purple,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Your SchoolBus has arrived",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              content: Container(
                  height: 320.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Column(children: <Widget>[
                        Text(
                          "",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          child: Icon(Icons.bus_alert_outlined,
                              color: Colors.deepPurple, size: 50),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: Text(
                            "YOUR SCHOOLBUS HAS ARRIVED AND IS AT YOUR SELECTED BUSSTAGE",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.15,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.86,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0),
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                )
                              ],
                            ),
                            child: FlatButton(
                                onPressed: (() {
                                  Navigator.pop(context);
                                  /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => regS()));*/
                                }),
                                child: Text(
                                  "Okay",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                      color: Colors.white),
                                )),
                          ),
                        )
                      ]))));
        });
  }

  _getCurrentLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  /*void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

    final marker = Marker(
      markerId: MarkerId('place_name'),
      position: LatLng(9.669111, 80.014007),
      // icon: BitmapDescriptor.,
      infoWindow: InfoWindow(
        title: 'title',
        snippet: 'address',
      ),
    );

    setState(() {
      markers[MarkerId('place_name')] = marker;
    });
  } */
  var lat1 = -1.3151808023973;
  var long1 = 36.806520049636;
  void _onMapCreated(GoogleMapController controller) {
    //mapController = controller;
    /*setState(() {
      //markers[MarkerId('place_name')] = marker;
    });*/
  }
  //List<LatLng> polylineCoordinates = [];
  /*void getpollylinepoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        'AIzaSyA7fRUg_vYd8Q3lxCiGo9IKsIIVgrAT564',
        PointLatLng(-1.3151808023973,
            36.806520049636), //source(-1.3151808023973, 36.806520049636)
        PointLatLng(-1.3093, 36.8125)); //destination

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) => polylineCoordinates.add(
            LatLng(point.latitude, point.longitude),
          ));
      print(polylineCoordinates);
    }
    setState(() {});
  }*/

  var myicon;
  @override
  Widget build(BuildContext context) {
    Map<PolylineId, Polyline> polylines = {};
    Set<Marker> markers = Set(); //markers for google map
    PolylinePoints polylinePoints = PolylinePoints();
    LatLng startLocation =
        mypos1 != null ? LatLng(mypos1, mypos2) : LatLng(1.3148, 36.8070);
    Future<BitmapDescriptor> getIcon({required String imagePath}) async {
      BitmapDescriptor.fromAssetImage(
              ImageConfiguration(size: Size(10, 10)), 'assets/sb4.png')
          .then((onValue) {
        myicon = onValue;
      });
      BitmapDescriptor icon = BitmapDescriptor.fromBytes(myicon);
      return icon;
    }

    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(size: Size(10, 10)), 'assets/sb4.png')
        .then((onValue) {
      myicon = onValue;
    }); //mypos1 != null ? LatLng(mypos1, mypos2) : LatLng(1.3148, 36.8070);
    LatLng endLocation = cord.split(',')[0] != ''
        ? LatLng(
            double.parse(cord.split(',')[0]), double.parse(cord.split(',')[1]))
        : LatLng(-1.3148, 36.8070);
    ;
//cal dist
    double calculateDistance(lat1, lon1, lat2, lon2) {
      var p = 0.017453292519943295;
      var c = cos;
      var a = 0.5 -
          c((lat2 - lat1) * p) / 2 +
          c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
      return 12742 * 1000 * asin(sqrt(a));
    }

    /*Polyline polylinex = Polyline(
      polylineId: PolylineId("poly"),
      color: Colors.deepPurpleAccent.withOpacity(0.1),
      points: [
        LatLng(
            double.parse(cord.split(',')[0]), double.parse(cord.split(',')[1])),

        mypos1 != null
            ? LatLng(mypos1, mypos2)
            : LatLng(1.3148, 36.8070), //my position

        //RiaraU
      ],
      width: 8,
    );*/
    Widget Dstan(String xdata, String xdata2) {
      //how do you find distance of coordinates
      //well, dist =sqrt 0f (X1 -X2)sq + (Y2-Y1)sq
      xls(String order) {
        return Ninotify.showNotification(
          id: 2,
          title: order,
          body: 'Your School Bus is almost at the stage',
          payload: 'r',
        );
      }

      var x = calculateDistance(
          mypos1, mypos2, double.parse(xdata), double.parse(xdata2));
      setState(() {
        rxd = x;
        print('<<<<<<<<<<<${rxd}>>>>>>>>>');
        if (rxd != null && rxd < 15.0) {
          // xls('School bus has arrived');
          // rono2();
        }
      });
      return Text(
          widget.on == "on"
              ? x.round() > 1000
                  ? (x.round() / 1000).toString() + " KM to your Busstop"
                  : x.round().toString() + " metres to your busstop"
              : "You'll be notified when the bus starts the transit",
          style: TextStyle(color: Colors.deepPurple, fontSize: 20));
    }

//cal dist
    widget.on == "on"
        ? markers.add(Marker(
            //add distination location marker
            markerId: MarkerId(endLocation.toString()),
            position: startLocation, //position of marker

            infoWindow: InfoWindow(
              //popup info assets\schoolbus3.png
              title: 'BUS STAGE',
            ),
            icon: BitmapDescriptor.defaultMarker, //Icon for Marker
          ))
        : '';
    widget.on == "on"
        ? markers.add(Marker(
            //add distination location marker
            markerId: MarkerId(endLocation.toString()),
            position: endLocation, //position of marker

            infoWindow: InfoWindow(
              //popup info
              title: '(School bus)',
            ),
            icon: BitmapDescriptor.defaultMarker, //Icon for Marker
          ))
        : '';
    widget.on == "on"
        ? markers.add(Marker(
            //add distination location marker
            markerId: MarkerId(endLocation.toString()),
            position: endLocation, //position of marker

            infoWindow: InfoWindow(
              //popup info
              title: '(School bus)',
            ),
            icon: BitmapDescriptor.defaultMarker, //Icon for Marker
          ))
        : '';

    addPolyLine(List<LatLng> polylineCoordinates) {
      PolylineId id = PolylineId("poly");
      Polyline polyline = Polyline(
        polylineId: id,
        color: Colors.deepPurpleAccent.withOpacity(0.1),
        points: polylineCoordinates,
        width: 8,
      );
      polylines[id] = polyline;
      setState(() {});
    }

    /*getDirections() async {
      List<LatLng> polylineCoordinates = [];

      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        'AIzaSyA7fRUg_vYd8Q3lxCiGo9IKsIIVgrAT564',
        PointLatLng(startLocation.latitude, startLocation.longitude),
        PointLatLng(endLocation.latitude, endLocation.longitude),
        travelMode: TravelMode.driving,
      );

      if (result.points.isNotEmpty) {
        result.points.forEach((PointLatLng point) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        });
      } else {
        // print('hello' + result.errorMessage);
      }
      // addPolyLine(polylineCoordinates);
    }

    getDirections();*/
    //final lat1 =
    /**?mypos1 == null &&
            mypos2 == null && */
    return cord.split(',')[0] == '' &&
            mypos1 == null &&
            mypos2 == null &&
            rxd == 150.2
        ? Scaffold(
            bottomNavigationBar: LinearProgressIndicator(color: Colors.red),
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * .8235,
                child: GoogleMapsWidget(
                  myLocationEnabled: true,
                  tiltGesturesEnabled: true,
                  compassEnabled: true,
                  //scrollGesturesEnabled: true,
                  //zoomGesturesEnabled: true,
                  //zoomControlsEnabled: false,
                  //polylines: {polylinex}, //polylines
                  markers: markers,
                  mapType: MapType.normal,
                  mapToolbarEnabled: true,
                  //compassEnabled:true,AIzaSyA7fRUg_vYd8Q3lxCiGo9IKsIIVgrAT564
                  apiKey: "AIzaSyA7fRUg_vYd8Q3lxCiGo9IKsIIVgrAT564",

                  sourceLatLng:
                      LatLng(-1.3148, 36.8070), //RiaraUcord.split(',')[0]
                  destinationLatLng: LatLng(-1.3148, 36.8070), //unknown
                  routeWidth: 2,
                ),
              ),
            ),
          )
        : Scaffold(
            extendBodyBehindAppBar: true, //i like this
            backgroundColor: Colors.transparent,

            //appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
            body: mypos1 == null
                ? Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * .8235,
                      child: GoogleMapsWidget(
                        myLocationEnabled: true,
                        tiltGesturesEnabled: true,
                        compassEnabled: true,
                        //scrollGesturesEnabled: true,
                        //zoomGesturesEnabled: true,
                        //zoomControlsEnabled: false,
                        //polylines: {polylinex}, //polylines
                        markers: markers,
                        mapType: MapType.normal,
                        mapToolbarEnabled: true,
                        //compassEnabled:true,AIzaSyA7fRUg_vYd8Q3lxCiGo9IKsIIVgrAT564
                        apiKey: "AIzaSyA7fRUg_vYd8Q3lxCiGo9IKsIIVgrAT564",

                        sourceLatLng: //1.3148° S, 36.8070° E
                            LatLng(-1.3148, 36.8070), //RiaraUcord.split(',')[0]
                        destinationLatLng: LatLng(-1.3148, 36.8070), //unknown
                        routeWidth: 2,
                      ),
                    ),
                  )
                : Scaffold(
                    // floatingActionButton: FloatingActionButton(onPressed: (){},),
                    extendBodyBehindAppBar: true, //i like this
                    extendBody: true,
                    backgroundColor: Colors.transparent,
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      centerTitle: true,
                      title: Container(
                          //height: 150,
                          width: MediaQuery.of(context).size.width,
                          child: InkWell(
                            onTap: () {
                              // rono2();
                            },
                            child: widget.on == "on"
                                ? Chip(
                                    backgroundColor: Colors.yellow,
                                    avatar: Icon(Icons.directions_bus,
                                        color: Colors.deepPurple),
                                    label: cord.split(',')[0] == ''
                                        ? Container(
                                            child: LinearProgressIndicator())
                                        : Dstan(
                                            //cord.split(',')[0] != ''
                                            cord.split(',')[0],
                                            cord.split(',')[1]),
                                  )
                                : Chip(
                                    label: Text("no transit"),
                                    backgroundColor: Colors.red,
                                  ),
                          )

                          //SizedBox(width: MediaQuery.of(context).size.width*.009,),
                          ),
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                    ),
                    //,
                    body: Container(
                      height: MediaQuery.of(context).size.height * .8235,
                      child: GoogleMapsWidget(
                        myLocationEnabled: true,
                        tiltGesturesEnabled: true,
                        compassEnabled: true,
                        //scrollGesturesEnabled: true,
                        //zoomGesturesEnabled: true,
                        //zoomControlsEnabled: false,
                        //polylines: {polylinex}, //polylines
                        markers: markers,
                        mapType: MapType.normal,
                        mapToolbarEnabled: true,
                        //compassEnabled:true,AIzaSyA7fRUg_vYd8Q3lxCiGo9IKsIIVgrAT564
                        apiKey: "AIzaSyA7fRUg_vYd8Q3lxCiGo9IKsIIVgrAT564",

                        sourceLatLng: mypos1 != null
                            ? LatLng(mypos1, mypos2)
                            : LatLng(
                                -1.148, 36.8070), //RiaraUcord.split(',')[0]
                        destinationLatLng: LatLng(-1.4148, 36.8070), //unknown
                        routeWidth: 2,
                      ),
                    ), //v2prime
                    bottomNavigationBar: tileyell
                        ? Container(
                            color: widget.on == "on"
                                ? Colors.yellow.withOpacity(0.5)
                                : Colors.red.withOpacity(0.5),
                            child: SingleChildScrollView(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(""),
                                    Text(now.toString(),
                                        style: TextStyle(
                                            color: Colors.grey.shade900,
                                            fontWeight: FontWeight.bold)),
                                    Text(""),
                                    //Chip(label: Text("Bus name")),
                                    ListTile(
                                      //leading:
                                      title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Chip(
                                              avatar: Icon(Icons.directions_bus,
                                                  color: Colors.deepPurple),
                                              label: Text(
                                                  sky4[hot1]
                                                      ["nameq"], //username
                                                  //backgroundColor:Colors.black12,
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                            ),
                                          ]),
                                      //subtitle: Text("Grouptest", style: TextStyle(color: Colors.grey.shade100)),
                                      trailing: FloatingActionButton(
                                          mini: true,
                                          onPressed: (() {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    FriendMess(
                                                  newc: [],
                                                  repl: '',
                                                  title: sky4[hot1]["nameq"],
                                                  token: widget.token,
                                                  myname: '',
                                                  user:
                                                      widget.miuser.toString(),
                                                ),
                                              ), //MaterialPageRoute
                                            );
                                            //add stuff here
                                          }),
                                          child: Icon(Icons.message,
                                              color: Colors.white)),
                                    ), //Text(v2prime.toString()),
                                    Stack(
                                      children: [
                                        ...v2prime
                                            .map((rt) => rt['useryou'] ==
                                                        widget.miuser &&
                                                    rt['datetime']
                                                            .split('|')[0] ==
                                                        now.toString() &&
                                                    rt['checkIn'] == 'done' &&
                                                    rt['driver'] ==
                                                        sky4[hot1]["nameq"]
                                                            .toString()
                                                ? Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors
                                                          .grey.shade900
                                                          .withOpacity(0.5),
                                                      border: Border.all(
                                                          color: Colors
                                                              .transparent),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        topRight:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                20.0),
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              Colors.deepPurple,
                                                          spreadRadius: 0,
                                                          blurRadius: 0,
                                                        )
                                                      ],
                                                    ),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .8,
                                                    child: ListTile(
                                                        leading: Icon(
                                                            Icons.school,
                                                            color:
                                                                Colors.white),
                                                        title: Text(
                                                            "BusStop Check in",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white)),
                                                        subtitle: Text(
                                                            rt['datetime']
                                                                .split('|')[1]
                                                                .toString()),
                                                        trailing: Checkbox(
                                                          value: true,
                                                          onChanged: (v) {
                                                            //y
                                                            print(v);
                                                          },
                                                        )),
                                                  )
                                                : SizedBox())
                                            .toList(), //.getRange(v2prime.length - 1, v2prime.length),//.take(5),
                                        SizedBox(height: 10),
                                        ...v2prime.map((rt) => rt['useryou'] ==
                                                    widget.miuser &&
                                                rt['datetime'].split('|')[0] ==
                                                    now.toString() &&
                                                rt['checkout'] == 'done' &&
                                                rt['driver'] ==
                                                    sky4[hot1]["nameq"]
                                                        .toString()
                                            ? Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade900
                                                      .withOpacity(0.5),
                                                  border: Border.all(
                                                      color:
                                                          Colors.transparent),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20.0),
                                                    topRight:
                                                        Radius.circular(20.0),
                                                    bottomLeft:
                                                        Radius.circular(20.0),
                                                    bottomRight:
                                                        Radius.circular(20.0),
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.deepPurple,
                                                      spreadRadius: 0,
                                                      blurRadius: 0,
                                                    )
                                                  ],
                                                ),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .8,
                                                child: ListTile(
                                                    leading: Icon(Icons.home,
                                                        color: Colors.white),
                                                    title: Text(
                                                        "BusStop Check out",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                    subtitle: Text(
                                                        rt['datetime']
                                                            .split('|')[1]
                                                            .toString()),
                                                    trailing: Checkbox(
                                                      value: true,
                                                      onChanged: (v) {
                                                        //y
                                                        print(v);
                                                      },
                                                    )),
                                              )
                                            : SizedBox())
                                      ],
                                    ),

                                    SizedBox(height: 5),
                                    SizedBox(height: 5)
                                  ]),
                            ),
                          )
                        : SizedBox(),
                    // bannerAdWidget()
                    floatingActionButtonLocation: tileyell
                        ? FloatingActionButtonLocation.endDocked
                        : FloatingActionButtonLocation.centerDocked,
                    floatingActionButton: FloatingActionButton(
                        mini: true,
                        child: Center(
                            child: Icon(
                                tileyell ? Icons.close : Icons.info_outline)),
                        onPressed: () {
                          !tileyell ? tileyell = true : tileyell = false;
                        }),
                  ),
          ); /*Scaffold(
      extendBodyBehindAppBar: true,//i like this
      backgroundColor:Colors.transparent,
      appBar:AppBar(
       centerTitle: true,
        title:_currentPosition != null?Chip(avatar:Icon(Icons.timer_outlined,color:Colors.deepPurple),label:Text( _currentPosition.toString(),style:TextStyle(color:Colors.deepPurple)),backgroundColor:Colors.yellow,):Text(""),
        elevation:0.0,
        backgroundColor:Colors.transparent,
        actions:[
         FloatingActionButton(
           mini:true,
           onPressed:(){
             _getCurrentLocation();
           },
           child:Center(
             child:Icon(Icons.person)
           ),
         )
        ]
      ),
      body: Center(
        child: GoogleMap(
        mapType: MapType.hybrid,
         initialCameraPosition: CameraPosition( target: LatLng(lat1, long1),
    zoom: 17.4746,),
    
        onMapCreated: (GoogleMapController controller) => _googleMapController = controller,
        markers:{
          

        }
      ),
      
      ),
      //floatingActionButtonPosition:FloatingActionButtonPosition.center,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=> _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(CameraPosition(
             target: LatLng(-2.3151808023973, 37.806520049636),
    zoom: 17.4746,
          ))
         
        ),
        label: Text('Bus Location'),
        icon: Icon(Icons.directions_bus),
      ),
    );*/
  }

  Future<void> _goToTheLake() async {}
}
