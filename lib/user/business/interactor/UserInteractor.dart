import 'package:flutter_laravel/user/business/interactor/AuthenticateUseCase.dart';
import 'package:flutter_laravel/user/business/service/userLocalService.dart';
import 'package:flutter_laravel/user/business/service/userNetworkService.dart';

class UserInteractor{
  Authenticateusecase authenticateusecase;

  UserInteractor._(
        this.authenticateusecase
      );

  static build(UserNetworkService network, UserLocalService local ){
    return UserInteractor._(
        Authenticateusecase(network, local)
    );
  }
}

