
import 'package:get/get.dart';

class HomeController extends GetxController {

  final _logged = false.obs;


  bool get logged => _logged.value;

}