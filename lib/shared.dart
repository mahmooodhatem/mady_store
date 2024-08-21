import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {
  Future<bool> isLoggedIn()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool("isLogin")?? false;
  }
  Future<void> login()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool("isLogin" , true);
  }
  Future<void> onBoarding()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool("OnBoarding" , false);
  }
}