import 'package:book_station/model/books_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Dio_controller extends GetxController {
  RxList<Books_model> book_data = RxList<Books_model>([]);
  void onInit() {
    super.onInit();
    getHttp();
  }

  void getHttp() async {
    try {
      var responde =
          await Dio().get("https://hapi-books.p.rapidapi.com/month/2022/3",
              options: Options(method: 'GET', headers: {
                'X-RapidAPI-Host': 'hapi-books.p.rapidapi.com',
                'X-RapidAPI-Key':
                    '6b11e08042msh14d9df819d203b8p1eb9aajsn0ed63b7ab1a6'
              }));
      if (responde.statusCode == 200 && responde.data != null) {
        for (int i = 0; i <= responde.data.length; i++) {
          var data = Books_model.fromJson(responde.data[i]);
          book_data.add(data);
        }
      } else {
        book_data = [] as RxList<Books_model>;
      }

      print(book_data.length);
    } catch (e) {
      print(e.toString());
    }
  }
}
