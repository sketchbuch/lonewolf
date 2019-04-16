import 'package:http/http.dart' as http;

Future<int> getData() async {
  var response = await http.get('https://www.projectaon.org/data/trunk/en/xml/01fftd.xml');
  return response.statusCode;
}


String getAonBook() {
  var response = getData();
  if (response == 200) {
    print('200 - ' + response.toString());
  } else {
    print('100 - ' + response.toString());
    throw Exception('Failed to load data');
  }

  print('statusCode: ' + response.toString());

  return 'error';
}