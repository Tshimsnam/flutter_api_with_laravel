
import 'package:flutter_laravel/user/business/model/Authenticate.dart';
import 'package:flutter_laravel/user/business/model/AuthenticateResponse.dart';
import 'package:flutter_laravel/user/business/service/userNetworkService.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserNetworkServiceImpl implements UserNetworkService{
  @override
  Future<AuthenticateResponse> authenticate(Authenticate data) async{
    var res= await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    body: data.toJson());
    var reponseMap=json.decode(res.body) as Map;
    print("responseMap $reponseMap");
    var reponseFinal=AuthenticateResponse.fromJson(reponseMap);
    return reponseFinal;
  }
}

void main(){
  var impl=UserNetworkServiceImpl();
  var data=Authenticate(email: "email", password: "password");
  impl.authenticate(data);
}