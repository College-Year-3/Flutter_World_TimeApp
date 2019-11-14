import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{

  String location;  // location name for the UI
  String time;  // the time in that location
  String flag;  //  url to an asset flag icon
  String url; // location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

 Future<void> getTime() async {

   try{
     //make request
     Response response = await get('http://worldtimeapi.org/api/timezone/$url');
     Map data = jsonDecode(response.body);
     //print(data);

     // get properties from data
     String dateTime = data['datetime'];
     String offset = data['utc_offset'].substring(1,3);
     //print(dateTime);
     // print(offset );

     // create DateTime object
     DateTime now = DateTime.parse(dateTime);
     now = now.add(Duration(hours: int.parse(offset)));

     time = now.toString(); // set the time property
   }
   catch(e){
      print('CAUGHT ERROR: $e');
      time = 'Could not get time data';
   }

  }


}WorldTime instance = WorldTime(location: 'Chicago', flag: 'America.png', url: 'UnitedStated/Chicago');
