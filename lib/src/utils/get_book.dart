import 'package:http/http.dart' as https;


Future<int> getAonBook() async {
  var response = await https.get('https://www.projectaon.org/data/trunk/en/xml/01fftd.xml');
  if (response.statusCode == 200) {
    print('200 - ' + response.body.toString());
  } else {
    print('100 - ' + response.toString());
    throw Exception('Failed to load data');
  }
}