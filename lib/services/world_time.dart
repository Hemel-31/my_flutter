import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location; //location name in UI
  late String time; //the time in the location
  late String flag; //asset flag url
  late String url; //this is the api url of endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map timeData = jsonDecode(response.body);
      // print(timeData);

      // geting propertis from timeData
      String dateTime = timeData['utc_datetime'];
      String abbreviation = timeData['abbreviation'].substring(1, 3);
      // print(dateTime);
      // print(abbreviation);

      // creating dateTime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(abbreviation)));

      //set the time property
      time = now.toString();
    } catch (_error) {
      print('cautch error : $_error');
      time  = "The time get a error!!! App is updating...";
    }
  }
}
